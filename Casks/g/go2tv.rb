cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.6.1"
  sha256 arm:   "d69db8495c3e0ce1c73ef3539e5a015f42ac583ef9f5e9935e80b20a8491bd8a",
         intel: "1adfda7100c6ccb5d7019593cc4276ea4563f63aaf9884f995cc5ea0f1634fc4"

  url "https://github.com/alexballas/go2tv/releases/download/v#{version}/go2tv_v#{version}_macOS_#{arch}.zip"
  name "Go2TV"
  desc "Cast media files to Smart TVs and Chromecast devices"
  homepage "https://github.com/alexballas/go2tv"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "go2tv.app"

  zap trash: "~/Library/Preferences/fyne/app.go2tv.go2tv"
end
