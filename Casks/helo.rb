cask "helo" do
  version "1.4.0"
  sha256 "5d731216607fc39fbc331728e85895d0187115b4ae464bae59182cac8f1d349a"

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
