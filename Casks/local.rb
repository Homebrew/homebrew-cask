cask "local" do
  version "6.4.0,5927"
  sha256 "912220739143240899e3c7a7e1007103fdcd6531dc0b23a189dd6fff0a5889c3"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-mac.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
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
