cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.6.0"
  sha256 arm:   "1d0f4d951243e19ddc14c70488e9044a300255d626dcda638210f3bfcf7eeb15",
         intel: "7d42db1fc9494034c186d6d3d3d8c54cb232a725e5c9d621133ec9ae865a9693"

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
