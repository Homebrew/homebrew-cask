cask "rider" do
  arch arm: "-aarch64"

  version "2024.3.6,243.25659.34"
  sha256 arm:   "bf3f08040194b1280a857886ac40c6518f83b40f60a6ee990d348a7e14b2c023",
         intel: "1677f8b1274149407799ba025f6a9316749a7b8d86ba142f77c807b52874f9fa"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :json do |json|
      json["RD"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Rider.app"
  binary "#{appdir}/Rider.app/Contents/MacOS/rider"

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
