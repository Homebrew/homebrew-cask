cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.21.6"

  if Hardware::CPU.intel?
    url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_x64.dmg",
        verified: "github.com/listen1/listen1_desktop/"
    sha256 "fd32f611ebbad961ecebfeaa53b1873d0fb74f2dbd25a48c67e410019f94267f"
  else
    url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_arm64.dmg",
        verified: "github.com/listen1/listen1_desktop/"
    sha256 "c10a1d812c29029b8c28878cd417fec435d76ab0c973b1f0ccf86080f3e78171"
  end

  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
