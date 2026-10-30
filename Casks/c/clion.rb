cask "clion" do
  arch arm: "-aarch64"

  version "2026.2.4.1,262.11879.106"
  sha256 arm:   "d332e4532fb12f74801a05707c784f57cf0ff73895116811fa6ebe5a2f568216",
         intel: "e7d69c42ae9a417debfc1450612c6f35b8cd39fbe6081dd7e1e0fa1aa40c74c3"

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
  depends_on macos: :monterey

  app "CLion.app"
  command_wrapper "clion",
                  executable: "#{appdir}/CLion.app/Contents/MacOS/clion"

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.CLion"

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
