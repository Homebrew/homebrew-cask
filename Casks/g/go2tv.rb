cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.7.0"
  sha256 arm:   "18c6b4d7efcdcf46f2484ab0e50f3fac15795d119b2512a3470ad19af1c3e7a6",
         intel: "3e6fa4abfa9bdf94826ddaee9859315439202ca28364497ec9f3d3edb4773a49"

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
