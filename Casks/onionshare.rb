cask "onionshare" do
  version "2.3.1"
  sha256 "5de2cb81c87a13bc27cd71061c8c1a1f5dde25efe3e1f6b4ddb02ca0a343323f"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.dmg"
  appcast "https://github.com/micahflee/onionshare/releases.atom"
  name "OnionShare"
  desc "Securely and anonymously share files, host websites, and chat with friends"
  homepage "https://onionshare.org/"

  app "OnionShare.app"
end
