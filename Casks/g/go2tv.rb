cask "go2tv" do
  arch arm: "arm64", intel: "amd64"

  version "2.3.0"
  sha256 arm:   "2b989704aa9264744a5575e4285f82f9690952c0dfdd8d6ca879fc04974c60ee",
         intel: "60a637a1cd854b9457b5fd75457bb8dc04159334c093e5460dcd12356632e42f"

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
