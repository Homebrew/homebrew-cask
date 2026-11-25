cask "clion" do
  arch arm: "-aarch64"

  version "2026.3.0.2,263.7307.347"
  sha256 arm:   "5affedbb379b512312698e42d04a01a2bd68416a319dc7daa482c4fd21614a70",
         intel: "faa64a02b5bede83b2ca01193a3d24578b291299dc41282e2b1ea4f72a5c51a9"

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
