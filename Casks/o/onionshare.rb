cask "onionshare" do
  version "2.6.3"
  sha256 "596c9d69650c77fbd5fe0f51624d8c350f718f1a76fd79ac27c50ee836ae0a50"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.dmg"
  name "OnionShare"
  desc "Securely and anonymously share files, host websites, and chat with friends"
  homepage "https://onionshare.org/"

  livecheck do
    url :homepage
    regex(/href=.*?OnionShare[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "OnionShare.app"

  zap trash: [
    "~/Library/Application Support/OnionShare",
    "~/Library/Preferences/org.onionshare.onionshare.plist",
    "~/Library/Saved Application State/org.onionshare.onionshare.savedState",
  ]
end
