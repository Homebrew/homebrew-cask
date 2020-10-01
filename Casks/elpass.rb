cask "elpass" do
  version "1.1.9,277"
  sha256 "355f2fb1b2acfcfe3c095b07d6c83494f61eeb36d7d94844ebc114b8744dcad6"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://elpass.app/macos/appcast.xml"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  app "Elpass.app"
end
