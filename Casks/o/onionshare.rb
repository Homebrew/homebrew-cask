cask "onionshare" do
  version "2.7"
  sha256 "bbfbfb0021524a6531119a986627419c7dbf229cd1ea055222ad344a65fad095"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.dmg"
  name "OnionShare"
  desc "Securely and anonymously share files, host websites, and chat with friends"
  homepage "https://onionshare.org/"

  livecheck do
    url :homepage
    regex(/href=.*?OnionShare[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "OnionShare.app"

  zap trash: [
    "~/Library/Application Support/OnionShare",
    "~/Library/Preferences/org.onionshare.onionshare.plist",
    "~/Library/Saved Application State/org.onionshare.onionshare.savedState",
  ]
end
