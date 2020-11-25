cask "stand" do
  version "2.1"
  sha256 "e7cc1237f50d9f6991ced65e598e02015174b98e69e90298bc42e4759bc40e4e"

  # f001.backblazeb2.com/file/stand-app/ was verified as official when first introduced to the cask
  url "https://f001.backblazeb2.com/file/stand-app/#{version}/Stand.zip"
  appcast "https://getstandapp.com/"
  name "Stand"
  desc "Reminds you to stand up once an hour"
  homepage "https://getstandapp.com/"

  depends_on macos: ">= :catalina"

  app "Stand.app"

  uninstall quit: [
    "com.reddavis.Stand",
  ]

  zap trash: [
    "~/Library/Preferences/com.reddavis.Stand.plist",
    "~/Library/Caches/com.reddavis.Stand",
  ]
end
