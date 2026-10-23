cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.8.0"
  sha256 arm:   "726bce24800f900640f3694a073141575e67edb7ee67492ee250738374210a0a",
         intel: "25f2ee6348c35f1cf24111ac0e477bbd77e4c591f152219dfdf70e40859aafbf"

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

  zap trash: [
    "~/Library/Caches/go2tv",
    "~/Library/Preferences/fyne/app.go2tv.go2tv",
  ]
end
