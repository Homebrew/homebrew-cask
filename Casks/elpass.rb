cask "elpass" do
  version "1.2.2,324"
  sha256 "b935496f83c1fd33afa87d7d53a7df9a9facefcbd482e4cd0650bb07b17d1911"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://elpass.app/macos/appcast.xml"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  app "Elpass.app"
end
