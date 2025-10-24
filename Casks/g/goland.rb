cask "goland" do
  arch arm: "-aarch64"

  version "2025.2.4,252.27397.100"
  sha256 arm:   "d122e1f1109f31373d4a479b99278f569da7cf3b9fea88b1b2077c6d598813bf",
         intel: "0a54191caca25c4ef4f82a2fd44bbd90b44a59054034aa586e5c53d6fe7257b6"

  url "https://download.jetbrains.com/go/goland-#{version.csv.first}#{arch}.dmg"
  name "Goland"
  desc "Go (golang) IDE"
  homepage "https://www.jetbrains.com/go/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release"
    strategy :json do |json|
      json["GO"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "GoLand.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/goland.wrapper.sh"
  binary shimscript, target: "goland"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/GoLand.app/Contents/MacOS/goland' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/GoLand",
    "~/Library/Application Support/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Caches/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Logs/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
