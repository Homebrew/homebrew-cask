cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "64aebe49706ffab3e66fe2a320bb705a945ef88e6afe042d42c233a5a2adeacd",
         intel: "4574548c24d4b06ae11e374525cbcc248daed90960ebc9eabe1f2bed7e285ddd"

  url "https://github.com/WINBIGFOX/TimeScribe/releases/download/v#{version}/TimeScribe-#{version}-#{arch}.zip"
  name "TimeScribe"
  desc "Working time tracker"
  homepage "https://timescribe.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "TimeScribe.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.amplussoftware.timescribe.sfl*",
    "~/Library/Application Support/timescribe",
    "~/Library/Preferences/de.amplussoftware.timescribe.plist",
  ]
end
