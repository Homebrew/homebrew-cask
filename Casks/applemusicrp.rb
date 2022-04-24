cask "applemusicrp" do
  version "3.0.0"
  sha256 "6c676cb60d3ab3bcb9380556fa8bf29f1b29b7f9edb6ad6ba5ce4eec760c6d24"

  url "https://github.com/wxllow/applemusicrp/releases/download/#{version}/AppleMusicRP.dmg"
  name "AppleMusicRP"
  desc "Discord Rich Presence for Apple Music w/ Album Artwork!"
  homepage "https://github.com/wxllow/applemusicrp"

  app "applemusicrp.app"
end
