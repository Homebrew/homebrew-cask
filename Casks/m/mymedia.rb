cask "mymedia" do
  version "3.0.0"
  sha256 "0cd7e3e566299b33b1300020b5143c3f6063a8d9046eca7244d94d94c5acbb53"

  url "https://github.com/photangralenphie/MyMedia/releases/download/v#{version}/MyMedia-v#{version}.dmg"
  name "MyMedia"
  desc "Media library app for browsing and watching movies and TV shows"
  homepage "https://github.com/photangralenphie/MyMedia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "MyMedia.app"

  zap trash: [
    "~/Library/Application Scripts/com.photagralenphie.MyMedia",
    "~/Library/Application Support/MyMedia",
    "~/Library/Containers/com.photagralenphie.MyMedia",
    "~/Library/Preferences/com.photagralenphie.MyMedia.plist",
  ]
end
