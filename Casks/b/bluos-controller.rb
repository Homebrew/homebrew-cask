cask "bluos-controller" do
  version "4.14.1"
  sha256 "d893e1ee59fb246e8357e49469b8626c85a92fee035f614009ea75e70ad12cd9"

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
