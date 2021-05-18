cask "helo" do
  version "1.5.0"
  sha256 "c7ec1da3815caad34148be0d299729e4c781efb392a1100926614bc6c2817434"

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
