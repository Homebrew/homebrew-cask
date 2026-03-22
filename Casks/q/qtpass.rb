cask "qtpass" do
  version "1.5.1"
  sha256 "f45ae0e2310bc82024ffe246634bb0f6e37776f0b5ef1635c124220ed84bae39"

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg",
      verified: "github.com/IJHack/qtpass/"
  name "QtPass"
  desc "Multi-platform GUI for pass, the standard unix password manager"
  homepage "https://qtpass.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "QtPass.app"

  zap trash: [
    "~/Library/Preferences/org.ijhack.QtPass.plist",
    "~/Library/Saved Application State/org.qtpass.savedState",
  ]
end
