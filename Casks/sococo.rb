cask "sococo" do
  version "6.12.2"
  sha256 :no_check

  url "https://s.sococo.com/rs/client/mac/sococo-client-mac.dmg"
  name "Sococo"
  desc "Online workplace client"
  homepage "https://app.sococo.com/a/download"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Sococo.app"
end
