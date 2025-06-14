cask "scrollapp" do
  version "1.2"
  sha256 "72f9f97d42fe620d6b0996b5a38925cc711f7beda1685444605a9535a05d7072"

  url "https://github.com/fromis-9/scrollapp/releases/download/v#{version}/Scrollapp-v#{version}.dmg"
  name "Scrollapp"
  desc "Windows-style auto-scrolling for macOS"
  homepage "https://github.com/fromis-9/scrollapp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Scrollapp.app"

  zap trash: [
    "~/Library/Preferences/com.fromis-9.scrollapp.plist",
    "~/Library/Application Support/Scrollapp",
  ]
end 