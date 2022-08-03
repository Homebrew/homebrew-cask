cask "bugdom" do
  version "1.3.2"
  sha256 "e6dd0dba89ed6ec72e421c12cedcc1a6e42580beebf8436046cba90504f85cb5"

  url "https://github.com/jorio/Bugdom/releases/download/#{version}/Bugdom-#{version}-mac.dmg",
      verified: "github.com/jorio/Bugdom/"
  name "Bugdom"
  desc "Bug-themed 3D action/adventure game from Pangea Software"
  homepage "https://jorio.itch.io/bugdom"

  app "Bugdom.app"
  artifact "Documentation", target: "#{Dir.home}/Library/Application Support/Bugdom"

  zap trash: [
    "~/Library/Preferences/Bugdom",
    "~/Library/Saved Application State/io.jor.bugdom.savedState",
  ]
end
