cask "helo" do
  version "1.5.0"
  sha256 "9e2f21d9cab76793b4f32ae923d39b8553874c250ec0dfe9c4dbf1a2e99748ac"

  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg",
      verified: "helo.fra1.digitaloceanspaces.com"
  name "HELO"
  desc "Email tester and debugger"
  homepage "https://usehelo.com/"

  livecheck do
    url "https://usehelo.com/download/latest/mac"
    strategy :header_match
  end

  auto_updates true

  app "HELO.app"

  zap trash: [
    "~/Library/Application Support/HELO",
    "~/Library/Logs/HELO",
    "~/Library/Preferences/de.beyondco.helo.plist",
    "~/Library/Saved Application State/de.beyondco.helo.savedState",
  ]
end
