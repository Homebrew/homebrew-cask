cask "onionshare" do
  version "2.7.3"
  sha256 "6fa4fe394834cea3082f4e13f2972cefef3a3edb5bdf73ca2d473b61890c7f03"

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
    "~/Library/Preferences/OnionShare.plist",
    "~/Library/Preferences/org.onionshare.onionshare.plist",
    "~/Library/Saved Application State/org.onionshare.onionshare.savedState",
  ]
end
