cask "bluos-controller" do
  version "4.12.2"
  sha256 "6f45465b593daf4a33fd1ee3d773f85b5b2a188bc56a784c57fbf6bcaad13bb2"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/BluOS-Controller-#{version}-MacOS.zip",
      verified: "content-bluesound-com.s3.amazonaws.com/uploads/"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads/"
    regex(%r{uploads/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)[._-]MacOS\.zip}i)
  end

  depends_on macos: ">= :big_sur"

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Application Support/BluOS Controller",
    "~/Library/Logs/BluOS Controller",
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
  ]
end
