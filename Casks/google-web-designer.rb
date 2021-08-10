cask "google-web-designer" do
  version "9.0.6.0"
  sha256 :no_check

  url "https://dl.google.com/webdesigner/mac/shell/googlewebdesigner_mac.dmg"
  name "Google Web Designer"
  homepage "https://www.google.com/webdesigner/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Google Web Designer.app"
end
