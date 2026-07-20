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

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "GhostVM.app"
  binary "#{appdir}/GhostVM.app/Contents/PlugIns/Helpers/vmctl.app/Contents/MacOS/vmctl"

  zap trash: [
    "/Library/Logs/DiagnosticReports/GhostVM_*.diag",
    "~/Library/Application Support/GhostVM",
    "~/Library/Application Support/org.ghostvm.GhostVM",
    "~/Library/Caches/org.ghostvm.ghostvm",
    "~/Library/HTTPStorages/org.ghostvm.ghostvm",
    "~/Library/Preferences/org.ghostvm.ghostvm.helper.plist",
    "~/Library/Preferences/org.ghostvm.ghostvm.plist",
  ]
end
