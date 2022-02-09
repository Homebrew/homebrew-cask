cask "google-web-designer" do
  version "9.0.8.0"
  sha256 :no_check

  url "https://dl.google.com/webdesigner/mac/shell/googlewebdesigner_mac.dmg"
  name "Google Web Designer"
  desc "Create interactive HTML5-based designs and motion graphics"
  homepage "https://www.google.com/webdesigner/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Google Web Designer.app"
end
