cask "tnas-pc" do
  arch arm: "arm64", intel: "amd64"
  folder = on_arch_conditional arm: "arm", intel: "X86"

  version "5.2.560"
  sha256 arm:   "88c8451307c718869618c95603fb0d5c2157f1ca83893211b2c7085769e5683d",
         intel: "fd1aa5933cfca860195d9c1aed3194c0af13c6660e3765b17c6cda6d6c594d28"

  url "https://download3.terra-master.com/Apps/TNAS%20PC/macOS/#{folder}/TNAS%20PC-#{arch}-#{version}.pkg"
  name "TNAS PC"
  desc "Desktop client for TerraMaster TNAS network storage devices"
  homepage "https://help.terra-master.com/docs/TOS7/application/tnas-pc"

  livecheck do
    url "https://help.terra-master.com/v2/api/download/packages?product=F4-425+Pro&lang=en-us"
    regex(/TNAS(?:%20|\s)PC[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on :macos

  pkg "TNAS PC-#{arch}-#{version}.pkg"

  uninstall launchctl: [
              "com.terra-master.online2.uninstall",
              "com.terra-master.online2.vtunc",
            ],
            quit:      "com.terramaster.tnaspc*",
            pkgutil:   "com.terramaster.tnaspc*",
            delete:    [
              "/usr/local/bin/twmonline2uninstall.sh",
              "/usr/local/bin/twmonline2vtunc",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.terramaster.tnaspc*.sfl*",
    "~/Library/Application Support/TerraSync",
    "~/Library/Application Support/TNAS PC",
    "~/Library/Preferences/com.terramaster.tnaspc*.plist",
  ]
end
