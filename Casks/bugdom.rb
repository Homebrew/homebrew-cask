cask "bugdom" do
  version "1.3.1"
  sha256 "6427c94b4594b4c37ca9c6fa4e112e0ee6e00ab75b8b962b204d65122b33c39f"

  url "https://github.com/jorio/Bugdom/releases/download/#{version}/Bugdom-#{version}-mac.dmg",
      verified: "github.com/jorio/Bugdom/"
  name "Bugdom"
  desc "Bug-themed 3D action/adventure game from Pangea Software"
  homepage "https://pangeasoft.net/bug/"

  app "Bugdom.app"
  artifact "Documentation", target: "#{Dir.home}/Library/Application Support/Bugdom"

  zap trash: [
    "~/Library/Preferences/Bugdom",
    "~/Library/Saved Application State/io.jor.bugdom.savedState",
  ]
end
