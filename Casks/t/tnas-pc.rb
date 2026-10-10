cask "tnas-pc" do
  arch arm: "arm64", intel: "amd64"
  folder = on_arch_conditional arm: "arm", intel: "X86"

  version "5.2.548"
  sha256 arm:   "e88f58fbff948d9aa2bc4bfb3606a0c2bffad6366f02c1351c210687a2643e58",
         intel: "8cc43064c5843440944cd8845ed009e6943d1d06b0f7c276f7510e23aa539aea"

  url "https://download3.terra-master.com/Apps/TNAS%20PC/macOS/#{folder}/TNAS%20PC-#{arch}-#{version}.pkg"
  name "TNAS PC"
  desc "Desktop client for TerraMaster TNAS network storage devices"
  homepage "https://help.terra-master.com/download"

  # The download API only answers for a named product; the client is the same
  # for every TNAS model.
  livecheck do
    url "https://help.terra-master.com/v2/api/download/packages?product=F4-425+Pro&lang=en-us"
    regex(/TNAS(?:%20|\s)PC[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on :macos

  pkg "TNAS PC-#{arch}-#{version}.pkg"

  # The preinstall script drops the tunnel daemon and its cleanup script into
  # /usr/local/bin outside the package receipt, so pkgutil does not remove them.
  uninstall launchctl: [
              "com.terra-master.online2.uninstall",
              "com.terra-master.online2.vtunc",
            ],
            quit:      "com.terramaster.tnaspc5",
            pkgutil:   "com.terramaster.tnaspc6",
            delete:    [
              "/usr/local/bin/twmonline2uninstall.sh",
              "/usr/local/bin/twmonline2vtunc",
              "/var/log/online2.log*",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.terramaster.tnaspc5.sfl*",
    "~/Library/Application Support/TerraSync",
    "~/Library/Application Support/TNAS PC",
    "~/Library/Preferences/com.terramaster.tnaspc5.plist",
  ]
end
