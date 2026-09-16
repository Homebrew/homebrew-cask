cask "goland" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.67"
  sha256 arm:   "91eed14a2e131f7abfe33187a3dbd996880d589271895ce2b04674befa95d276",
         intel: "c6853c0d34df92adacd9cfe3006be0fd6485a94d996e6cb264f30a496ad6686a"

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

  uninstall quit: "com.jetbrains.goland"

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
