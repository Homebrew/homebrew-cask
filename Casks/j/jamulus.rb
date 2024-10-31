cask "jamulus" do
  version "3.11.0"

  on_catalina :or_older do
    sha256 "1407619a136e5d2094cdad1e65cf51e9029a36232db4e83b6e48c6b987374a56"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac_legacy.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end
  on_big_sur :or_newer do
    sha256 "4cf680b643dd1bbb2f52655f5fef71ce222024d3c19713997fbe2a3626cd7d6a"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end

  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  livecheck do
    url "https://sourceforge.net/projects/llcon/rss?path=/Jamulus"
  end

  app "Jamulus.app"
  app "JamulusServer.app"

  zap trash: [
    "~/Library/Application Scripts/app.jamulussoftware.Jamulus*",
    "~/Library/Containers/app.jamulussoftware.Jamulus*",
  ]
end
