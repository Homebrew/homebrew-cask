cask "atlantis" do
  version "0.9.9.8"
  sha256 "bdd3f69c3ac2071757f31fec0d7a18c45539018e85b6dbb4babbdc8ecfcddc33"

  url "https://www.riverdark.net/atlantis/downloads/Atlantis-#{version}.zip"
  name "Atlantis"
  desc "MUD (Multi User Dungeon) client"
  homepage "https://www.riverdark.net/atlantis/"

  livecheck do
    url "https://www.riverdark.net/atlantis/downloads/"
    regex(/href=.*?Atlantis-(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Atlantis.app"

  zap trash: [
    "~/Library/Application Support/Atlantis",
    "~/Library/Preferences/net.riverdark.Atlantis.plist",
  ]
end
