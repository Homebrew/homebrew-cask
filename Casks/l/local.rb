cask "local" do
  arch arm: "-arm64"

  version "9.0.4,6699"
  sha256  arm:   "991359db7e041de90f098954b9b20298d5d08d97f0badd5f1691e3440c04dba5",
          intel: "38593f304d455cfa71842cd393bbbcf07567290c8979bd9aa13a4fcde5264f2d"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-mac#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac#{arch}"
    regex(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
    strategy :header_match do |headers|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local",
    "~/Library/Logs/local-lightning.log",
    "~/Library/Preferences/com.getflywheel.lightning.local.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local.savedState",
  ]
end
