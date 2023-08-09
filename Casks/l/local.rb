cask "local" do
  arch arm: "-arm64"

  version "7.1.2,6410"
  sha256  arm:   "ecdd456560b7efd9d3683620c506fc5f540df5dbfa90e17a324f3d3b4458a296",
          intel: "7168d075eaff5a12d34ef6e0cc95963521f21bbd9a3dd19014c086deeed919cd"

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
