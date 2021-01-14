cask "helo" do
  version "1.3.0"
  sha256 "728d52ca3efee4cb94a0499a887c991028b29527ae8e6c007ffeb11e0fc381af"

  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg",
      verified: "helo.fra1.digitaloceanspaces.com"
  name "HELO"
  desc "Email tester and debugger"
  homepage "https://usehelo.com/"

  livecheck do
    url "https://usehelo.com/download/latest/mac"
    strategy :header_match
  end

  app "HELO.app"

  zap trash: [
    "~/Library/Application Support/HELO",
    "~/Library/Logs/HELO",
    "~/Library/Preferences/de.beyondco.helo.plist",
    "~/Library/Saved Application State/de.beyondco.helo.savedState",
  ]
end
