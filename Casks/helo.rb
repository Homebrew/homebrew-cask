cask "helo" do
  version "1.6.2"
  sha256 "a22704a4b8f5bc13a9f1c8f6e893657576c20308fe7372ae87306d58d70dca48"

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
