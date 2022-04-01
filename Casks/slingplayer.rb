cask "slingplayer" do
  version "5.0.92"
  sha256 "8abd54ef4525ed31b6da7622ed3198d7963b32ce4f7966fbbd267f43f99f8e39"

  url "http://download.slingmedia.com/SlingplayerDesktop/Mac/#{version}/SlingplayerDesktop-#{version}.dmg",
      verified: "slingmedia.com/"
  name "Slingplayer Desktop"
  desc "Desktop application for Sling products"
  homepage "https://www.slingbox.com/"

  livecheck do
    url "https://www.slingbox.com/Products/SlingplayerApps.aspx"
    regex(%r{href=.*?/SlingplayerDesktop-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Slingplayer Desktop.app"
end
