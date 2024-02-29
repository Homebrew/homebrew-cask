cask "onionshare" do
  version "2.6.1"
  sha256 "29228e17de2038243a61e4fce2028770cef754dfb2688820b1ad4eba3795d493"

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
