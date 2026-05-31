cask "ghostvm" do
  version "2.11.0"
  sha256 "c974493ca79cf8c0071dbb72da39cedd5e35ab87f19cbd72de542989e619432d"

  url "https://github.com/groundwater/GhostVM/releases/download/v#{version}/GhostVM-#{version}.dmg",
      verified: "github.com/groundwater/GhostVM/"
  name "GhostVM"
  desc "Native macOS Virtual Machines for Apple Silicon"
  homepage "https://ghostvm.org/"

  livecheck do
    url "https://ghostvm.org/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "GhostVM.app"

  zap trash: [
    "~/Library/Application Support/GhostVM",
    "~/Library/Application Support/org.ghostvm.GhostVM",
    "~/Library/HTTPStorages/org.ghostvm.ghostvm",
    "~/Library/Preferences/org.ghostvm.ghostvm.helper.plist",
    "~/Library/Preferences/org.ghostvm.ghostvm.plist",
  ]
end
