cask "psychopy" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.2.2"
  sha256 arm:   "efd9ac6cc3ba551ce9195675eddc48b12c9604f0864dfc0799b7e13a5b177783",
         intel: "da45cf44cde0bbcd82262adb89afdf3e9093c1437b40f437cea3d3400d1dd970"

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

  zap trash: [
    "~/.psychopy3",
    "~/Library/Preferences/org.opensciencetools.psychopy.plist",
    "~/Library/Saved Application State/org.opensciencetools.psychopy.savedState",
  ]
end
