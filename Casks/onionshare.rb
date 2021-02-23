cask "onionshare" do
  version "2.3.1"
  sha256 "5de2cb81c87a13bc27cd71061c8c1a1f5dde25efe3e1f6b4ddb02ca0a343323f"

  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare-#{version}.dmg",
      verified: "github.com/micahflee/onionshare/"
  name "OnionShare"
  desc "Securely and anonymously send and receive files"
  homepage "https://onionshare.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OnionShare.app"
end
