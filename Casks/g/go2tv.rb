cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.5.0"
  sha256 arm:   "13772ffefefd5d12a9da01e1ea1f71c534128e3249c083ab0513f46e0bae504d",
         intel: "33586b765f493ea2e6be85917f5e6647da9c549cfb054db7be37ad45702b625f"

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
