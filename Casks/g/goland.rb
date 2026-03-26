cask "goland" do
  arch arm: "-aarch64"

  version "2026.1,261.22158.291"
  sha256 arm:   "668e3c44cb55530795e78d48998c6d413069e0be198724c3c451702be632ad99",
         intel: "cc50235d274e69fdc2db34030eb88e2bd176c4ec464eb03269c547521d12a9c9"

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
      open -na "GoLand.app" --args "$@"
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
