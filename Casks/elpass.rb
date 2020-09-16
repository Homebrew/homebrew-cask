cask "elpass" do
  version "1.1.8,273"
  sha256 "341d1dd94628e1b5b5d9285acc73235792e3350fabc891d58fb6581f5ab2a5f2"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://elpass.app/macos/appcast.xml"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  app "Elpass.app"
end
