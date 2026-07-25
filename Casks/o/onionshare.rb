cask "onionshare" do
  version "2.6.4"
  sha256 "2c034b3bbe8128a7c033dbd69ebaf4a8ea2a5988e83dc65d3fa787f7fdf308f5"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.dmg"
  name "OnionShare"
  desc "Securely and anonymously share files, host websites, and chat with friends"
  homepage "https://onionshare.org/"

  livecheck do
    url :homepage
    regex(/href=.*?OnionShare[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :big_sur

  app "OnionShare.app"

  zap trash: [
    "~/Library/Application Support/OnionShare",
    "~/Library/Preferences/org.onionshare.onionshare.plist",
    "~/Library/Saved Application State/org.onionshare.onionshare.savedState",
  ]
end
