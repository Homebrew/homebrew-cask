cask "elpass" do
  version "1.1.10,297"
  sha256 "33693ebfb88449c8d4b05b15f117b47bd5cb4a874f9f4d25a16e47347cb084fd"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://elpass.app/macos/appcast.xml"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  app "Elpass.app"
end
