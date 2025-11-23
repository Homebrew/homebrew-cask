cask "loading" do
  version "1.2.6"
  sha256 :no_check

  url "https://bonzaiapps.com/loading/Loading.zip"
  name "Loading"
  desc "Network activity monitor"
  homepage "https://bonzaiapps.com/loading/"

  livecheck do
    url "https://bonzaiapps.com/loading/update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Loading.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bonzaiapps.loading.sfl*",
    "~/Library/HTTPStorages/com.bonzaiapps.loading",
    "~/Library/Preferences/com.bonzaiapps.loading.plist",
  ]
end
