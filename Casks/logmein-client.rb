cask "logmein-client" do
  version "4.1.7664,4.1.0.7664"
  sha256 :no_check

  url "https://secure.logmein.com/LogMeInClientMac.dmg"
  name "LogMeIn Client"
  homepage "https://secure.logmein.com/products/pro/learnmore/desktopapp.aspx"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "LogMeIn Client.app"
end
