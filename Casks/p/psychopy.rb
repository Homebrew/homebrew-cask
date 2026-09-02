cask "psychopy" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.2.3"
  sha256 arm:   "d715f35ea58ab3802f6bd8fa72ccc4969d84c051c65d80bce384dcdc4051fb6d",
         intel: "0e0fe98bcac0910cbd8a96c4bda239a6865aa45b874c6e8c38d87b0b1019a642"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS-#{arch}-3.11.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://www.psychopy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "PsychoPy.app"

  uninstall quit: "org.opensciencetools.psychopy"

  zap trash: [
    "~/.psychopy3",
    "~/Library/Preferences/org.opensciencetools.psychopy.plist",
    "~/Library/Saved Application State/org.opensciencetools.psychopy.savedState",
  ]
end
