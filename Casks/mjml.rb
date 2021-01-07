cask "mjml" do
  version "3.0.3"
  sha256 "55fc3e8dfbcd674b02f074f8188cfa97f6d4439381df42680b97bbc98ce6c02a"

  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg",
      verified: "github.com/mjmlio/mjml-app/"
  appcast "https://github.com/mjmlio/mjml-app/releases.atom"
  name "MJML"
  desc "Desktop app for MJML"
  homepage "https://mjmlio.github.io/mjml-app/"

  app "MJML.app"
end
