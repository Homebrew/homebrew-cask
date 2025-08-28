cask "clion" do
  arch arm: "-aarch64"

  version "2025.2.1,252.25557.127"
  sha256 arm:   "d8256fee77311192ffcb45d9efa5fa57fb2ea83a22925f49bc5880106f7b9ee4",
         intel: "1cc896ae584c51009674f12d9c43d481b108b8e59243e60b094e7a967bb64652"

  url "https://download.jetbrains.com/cpp/CLion-#{version.csv.first}#{arch}.dmg"
  name "CLion"
  desc "C and C++ IDE"
  homepage "https://www.jetbrains.com/clion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
    strategy :json do |json|
      json["CL"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CLion.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/clion.wrapper.sh"
  binary shimscript, target: "clion"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/CLion.app/Contents/MacOS/clion' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
