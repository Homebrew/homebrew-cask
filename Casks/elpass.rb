cask "elpass" do
  version "1.2.0,309"
  sha256 "f35c1e2efc0c6406d471b8e728bfc90079a7a1daf91410bbdb9efe2c89c319bb"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://elpass.app/macos/appcast.xml"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  app "Elpass.app"
end
