cask "clion" do
  arch arm: "-aarch64"

  version "2026.3,263.7307.209"
  sha256 arm:   "af62fec6fe5acc793f18680376deaaa2ad6ae70eeb98d349102fddd46b41ee7e",
         intel: "b9252dbe765afb3dc3a4d477517d97ab969b1aca6b019506eb111e5ca9d4e9dc"

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
