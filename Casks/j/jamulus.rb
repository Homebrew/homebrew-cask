cask "jamulus" do
  version "3.10.0"

  on_mojave :or_older do
    sha256 "6c645ba373205f774a09df59565e39808868b7ef3fb296a56f616ef90e74aefe"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac_legacy.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end
  on_catalina :or_newer do
    sha256 "c4f15729706e7ba6a93b1226c33cbeb4dc95d8aee64c9fbdc4443c9d8687b9b6"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end

  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :catalina"

  app "Jamulus.app"
  app "JamulusServer.app"
end
