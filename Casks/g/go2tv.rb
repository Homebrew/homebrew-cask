cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.9.0"
  sha256 arm:   "160e0e7c2acc10d3cdb032ac70190331a8337d2240cce28f30f1591d7afcf3df",
         intel: "be9872aace3c4b97d89ccf7771f95991c8973f71d2fd63c0db62248a5500dbc8"

  url "https://github.com/alexballas/go2tv/releases/download/v#{version}/go2tv_v#{version}_macOS_#{arch}.zip"
  name "Go2TV"
  desc "Cast media files to Smart TVs and Chromecast devices"
  homepage "https://github.com/alexballas/go2tv"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "go2tv.app"

  zap trash: [
    "~/Library/Caches/go2tv",
    "~/Library/Preferences/fyne/app.go2tv.go2tv",
  ]
end
