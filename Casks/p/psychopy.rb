cask "psychopy" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.2.5"
  sha256 arm:   "99118eb78017197a1576e313ed486b035d0b04fdd0bddc97bc3e7485dc084707",
         intel: "c532546c422b82056d2888a6b302e371d40ca3fd3418d912bd125a27f051d3b0"

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
