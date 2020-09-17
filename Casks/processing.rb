cask "processing" do
  version "3.5.4,0270"
  sha256 "4d64fe42a6c5c0863cc82e93a036e73731999ee9448be45bc322f91b0010bb6b"

  # github.com/processing/processing/ was verified as official when first introduced to the cask
  url "https://github.com/processing/processing/releases/download/processing-#{version.after_comma}-#{version.before_comma}/processing-#{version.before_comma}-macosx.zip"
  appcast "https://github.com/processing/processing/releases.atom"
  name "Processing"
  homepage "https://processing.org/"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Processing",
    "~/Preferences/org.processing.app.plist",
    "~/Preferences/processing.app.tools.plist",
  ]
end
