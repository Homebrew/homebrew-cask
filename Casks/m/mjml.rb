cask "mjml" do
  version "3.0.4"
  sha256 "8bf1e24f770d8191526ce42cab423dc6834876d8cee280b12338510f976dff4c"

  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg",
      verified: "github.com/mjmlio/mjml-app/"
  name "MJML"
  desc "Desktop app for MJML"
  homepage "https://mjmlio.github.io/mjml-app/"

  no_autobump! because: :requires_manual_review

  app "MJML.app"

  caveats do
    requires_rosetta
  end
end
