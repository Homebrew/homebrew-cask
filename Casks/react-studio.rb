cask "react-studio" do
  version "1.7.35,404"
  sha256 "f0706819d1c4dfd1c64173a2c4a0d91d3de6c0d93b0428241ad1c07d6fd99906"

  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.csv.first.no_dots}_build#{version.csv.second}.zip",
      verified: "s3.amazonaws.com/sc.neonto.com/"
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
