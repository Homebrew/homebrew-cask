cask "react-studio" do
  version "1.7.21,390"
  sha256 "dc04e8d39e61e06c98ef1771d7b9d13b55aa7033b2735d2057a13d80411a7d00"

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
