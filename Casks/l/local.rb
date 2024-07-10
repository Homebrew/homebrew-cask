cask "local" do
  arch arm: "-arm64"

  version "9.0.5,6706"
  sha256  arm:   "e19157a9ae6f4a188d2a89ecf926a1a8dbef7ec6f0b42d10c004e1bb501d4f5b",
          intel: "a1a02061b492558a736294cb39c2c60b267f3974b764c33e6f7a27f751a2e7b2"

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
