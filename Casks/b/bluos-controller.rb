cask "bluos-controller" do
  version "4.14.0"
  sha256 "46dbf3fc6e2d6466fe611c4558f54ff8cf60f9cb5ac4892e8247db5a4e8f39d2"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/BluOS-Controller-#{version}-MacOS.zip",
      verified: "content-bluesound-com.s3.amazonaws.com/uploads/"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads/"
    regex(%r{uploads/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)[._-]MacOS\.zip}i)
  end

  depends_on macos: ">= :monterey"

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Application Support/BluOS Controller",
    "~/Library/Logs/BluOS Controller",
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
  ]
end
