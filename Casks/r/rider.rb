cask "rider" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.135"
  sha256 arm:   "9d7b7ddf98a09da2d5622959f8878b6293ac0386f64ced7b8b0144a77f4f7080",
         intel: "28e57ee0994e75eb05906d798e5a2ebab0485e6886810f6104e58e8a1b03bbd5"

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
  depends_on :macos

  app "Rider.app"
  command_wrapper "rider",
                  executable: "#{appdir}/Rider.app/Contents/MacOS/rider"

  uninstall quit: "com.jetbrains.rider"

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
