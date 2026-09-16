cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.6.1"
  sha256 arm:   "52b188d7f2cea934919149d63fc4a4fcf7944def7adf451b4bc7942648ae66df",
         intel: "351bf172c1825f88f90d9f7f07b3f2e9718fdfe8a720bba59ba332c1d2c69270"

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
