cask "gather" do
  arch arm: "-arm64"

  version "0.9.1"
  sha256 arm:   "0b0c75b0c99df44e431ee0809f60090d55d5ca3d710c3b75e424f1ec56cd881c",
         intel: "a325b019903bd294fa7427508b854587f39925167ec5db8781327503f07547df"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
