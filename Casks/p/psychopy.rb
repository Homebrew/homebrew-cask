cask "psychopy" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.2.1"
  sha256 arm:   "0c608e99672640976924a4dd267ddf709a643b8d23dc7e6bb13d4390fd693f3a",
         intel: "7c87cf8833dd72f2aa00b63edf7ca1746546e0e24ed8abff6552491b607fb887"

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
