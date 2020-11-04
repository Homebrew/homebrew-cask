cask "react-studio" do
  version "1.7.33,402"
  sha256 "407de6d5e6153b9df5531f67e790cd2d032f5997cb81869fae1cc865a2d8e670"

  # s3.amazonaws.com/sc.neonto.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.before_comma.no_dots}_build#{version.after_comma}.zip"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/send_post_request.cgi?url=https://reactstudio.com/api/download/reactstudio",
          must_contain: version.before_comma.no_dots
  name "ReactStudio"
  homepage "https://reactstudio.com/"

  app "React Studio.app"

  zap trash: [
    "~/Documents/React Studio",
    "~/Library/Application Support/React Studio",
    "~/Library/Caches/com.neonto.ReactStudio",
    "~/Library/Cookies/com.neonto.ReactStudio.binarycookies",
    "~/Library/Preferences/com.neonto.ReactStudio.plist",
    "~/Library/Preferences/com.neonto.ReactStudio.plist.*",
    "~/Library/Saved Application State/com.neonto.ReactStudio.savedState",
  ]
end
