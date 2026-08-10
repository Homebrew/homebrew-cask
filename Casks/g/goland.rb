cask "goland" do
  arch arm: "-aarch64"

  version "2026.2.1,262.9437.195"
  sha256 arm:   "0c8a472efb13c61f60cbda06345ffd97675a997d14ac6a7f8abdb5c5c0759251",
         intel: "064c477affd0ee012a472c04ff9c59da53b3a9aa6a4456bda084606c16d33283"

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
