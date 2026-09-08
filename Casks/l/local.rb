cask "local" do
  arch arm: "-arm64"

  version "10.1.2,7004"
  sha256 arm:   "9507b0cf27637dedb65b5750f76da20c3a7723ebf91030c779e9211779af001c",
         intel: "80c6f1dcd52051279b8ca1c30495113cf1999bd6004b626b64db7ab2873172d1"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-mac#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac#{arch}"
    regex(%r{/(\d+(?:\.\d+)+)\+(\d+)/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local",
    "~/Library/Logs/local-lightning.log",
    "~/Library/Preferences/com.getflywheel.lightning.local.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local.savedState",
  ]
end
