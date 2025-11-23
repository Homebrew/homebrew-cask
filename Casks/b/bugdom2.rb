cask "bugdom2" do
  version "4.0.0"
  sha256 "c962aa3f135d829c2d4409a757480aebac0d1d6dd3fadfcf578503f85445175f"

  url "https://github.com/jorio/Bugdom2/releases/download/v#{version}/Bugdom2-#{version}-mac.dmg",
      verified: "github.com/jorio/Bugdom2/"
  name "Bugdom 2"
  desc "Bug-themed 3D action/adventure game sequel from Pangea Software"
  homepage "https://jorio.itch.io/bugdom2"

  app "Bugdom 2.app"
  artifact "Instructions", target: "~/Library/Application Support/Bugdom2"

  zap trash: [
    "~/Library/Preferences/Bugdom2",
    "~/Library/Saved Application State/io.jor.bugdom2.savedState",
  ]
end
