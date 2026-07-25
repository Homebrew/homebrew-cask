cask "bluos-controller" do
  version "4.16.0"
  sha256 "842348371f93e581c5c1e33b7b1a6f0442b0b134b3a3fe9edf6263b9792dd5aa"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/BluOS-Controller-#{version}-MacOS.zip",
      verified: "content-bluesound-com.s3.amazonaws.com/uploads/"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads/"
    regex(%r{uploads/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)[._-]MacOS\.zip}i)
  end

  depends_on macos: :monterey

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Application Support/BluOS Controller",
    "~/Library/Logs/BluOS Controller",
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
  ]
end
