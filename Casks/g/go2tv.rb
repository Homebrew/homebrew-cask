cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.0"
  sha256 arm:   "dc6f320e6acf586f005c6427e574928310416bc49d9a446fc9dc91784e4e6b26",
         intel: "817ae61c9c2136ee76a1a55e32e3f202532a3025577037bfe3117f4b7169cb7a"

  url "https://github.com/alexballas/go2tv/releases/download/v#{version}/go2tv_v#{version}_macOS_#{arch}.zip"
  name "Go2TV"
  desc "Cast media files to Smart TVs and Chromecast devices"
  homepage "https://github.com/alexballas/go2tv"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "go2tv_v#{version}_macOS_#{arch}/go2tv.app"

  zap trash: "~/Library/Preferences/fyne/app.go2tv.go2tv"
end
