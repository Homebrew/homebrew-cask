cask "goland" do
  arch arm: "-aarch64"

  version "2026.2.1.1,262.9437.286"
  sha256 arm:   "eb5b20a31d97c494f28dcc43ae98b7eb9b777c9808d1cafdb4c48ef4fc45ce46",
         intel: "8a4aeabd1c7a642d6b399d57ed9cc09ce1a57762b4ab2ec0e911dccad3082168"

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
