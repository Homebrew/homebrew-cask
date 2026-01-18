cask "snipaste" do
  version "2.11.3"
  sha256 "a2287838889e7b1734a65d952bae5ef7f479bdc163d0c31be91859bca120fd3e"

  url "https://download.snipaste.com/archives/Snipaste-#{version}.dmg"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac"
    regex(/Snipaste[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
