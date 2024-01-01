cask "predator-screensaver" do
  version "1.0.6"
  sha256 "6b0b132188a5ee1c1e54a633d280eb842edf183e42b55fae5ca043c38b87164b"

  url "https://github.com/vpeschenkov/Predator/releases/download/#{version}/Predator.saver.zip"
  name "predator-screensaver"
  desc "A predator-inspired clock screensaver."
  homepage "https://github.com/vpeschenkov/Predator"

  livecheck do
    url :url
    strategy :github_latest
  end

  screen_saver "Predator.saver"

  zap trash: [
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/" \
    "ByHost/Predator.*",
    "~/Library/Preferences/ByHost/Predator.*",
    "~/Library/Screen Savers/Predator.saver",
  ]
end
