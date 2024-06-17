cask "jamulus" do
  version "3.10.0"

  on_catalina :or_older do
    sha256 "1407619a136e5d2094cdad1e65cf51e9029a36232db4e83b6e48c6b987374a56"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac_legacy.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end
  on_big_sur :or_newer do
    sha256 "c4f15729706e7ba6a93b1226c33cbeb4dc95d8aee64c9fbdc4443c9d8687b9b6"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end

  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  app "Jamulus.app"
  app "JamulusServer.app"
end
