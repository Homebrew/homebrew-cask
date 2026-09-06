cask "isyncer" do
  arch arm: "aarch64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "1b13a20b5b1444b0177ccabdc75161b2dcd2124440ac4a485208522657dea08d",
         intel: "e5540659c1f728beb45d667edda81fb5097458b131589bb1b659fbaba7137994"

  url "https://www.isyncer.de/system/iSyncerV#{version}mac-installer-#{arch}.tgz"
  name "iSyncer"
  desc "Utility to export and sync iTunes/Apple Music playlists"
  homepage "https://www.isyncer.de/"

  livecheck do
    url "https://www.isyncer.de/en/releases"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "iSyncer-installer-#{arch}-#{version}.pkg"

  uninstall pkgutil: "de.isyncer.iSyncer"

  zap trash: [
    "~/iSyncer",
    "~/Library/Application Support/iSyncer",
    "~/Library/Preferences/de.isyncer.iSyncer.plist",
  ]
end
