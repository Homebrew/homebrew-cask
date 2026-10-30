cask "goland" do
  arch arm: "-aarch64"

  version "2026.2.4,262.11879.101"
  sha256 arm:   "ba37c61e4637f767ad01d7f88eca9f8f878138e2015b4d2f178640651964ab33",
         intel: "e4a26c299fcab2843a2ccc323705ffd5c19dc71962c0e8db992c739651b8e243"

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
  depends_on :macos

  app "GoLand.app"
  command_wrapper "goland",
                  executable: "/usr/bin/open",
                  args:       ["-na", "GoLand.app", "--args"]

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.goland"

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
