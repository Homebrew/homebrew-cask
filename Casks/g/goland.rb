cask "goland" do
  arch arm: "-aarch64"

  version "2024.2.3,242.23339.24"
  sha256 arm:   "dd664944c119f01e81e9a864187510813521b1c2afab39ed57332b29cff9da61",
         intel: "e9cedcee2365db7eeeded75fafab8f25931819dc5ae111195e040354b3cc07f9"

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
  depends_on macos: ">= :high_sierra"

  app "GoLand.app"
  binary "#{appdir}/GoLand.app/Contents/MacOS/goland"

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
