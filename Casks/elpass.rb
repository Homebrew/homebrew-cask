cask "elpass" do
  version "1.2.3,330"
  sha256 "25251036d6961aad54852f54f3606467903834153b68252b4264d9e6f2da3778"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://elpass.app/macos/appcast.xml"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  app "Elpass.app"
end
