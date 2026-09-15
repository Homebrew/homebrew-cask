cask "psychopy" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.2.4"
  sha256 arm:   "1a99836dc552964693cb824e1d0d9e0e1fe39c3b4e202859181dc4a4c63f1487",
         intel: "01c3a32db263a9927e94c147b2acaab6563c5d54e79233ebaae5e3ec76f28f2f"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS-#{arch}-3.11.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://www.psychopy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PsychoPy.app"

  uninstall quit: "org.opensciencetools.psychopy"

  zap trash: [
    "~/.psychopy3",
    "~/Library/Preferences/org.opensciencetools.psychopy.plist",
    "~/Library/Saved Application State/org.opensciencetools.psychopy.savedState",
  ]
end
