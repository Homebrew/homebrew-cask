cask "playmemories-home" do
  version "3.6.01,zb2OnHfINu"
  sha256 "99de6ea54029d14b7c7b94d7a4d5096470a65a26a3aff53164213272b0d33896"

  url "https://pmb.update.sony.net/PMH/#{version.csv.second}/PMHOME_#{version.csv.first.no_dots}DL.dmg",
      verified: "pmb.update.sony.net/PMH/"
  name "PlayMemories Home"
  desc "Freeware that manages and edits photos and videos"
  homepage "https://support.d-imaging.sony.co.jp/www/disoft/int/download/playmemories-home/mac/en/"

  livecheck do
    url "https://support.d-imaging.sony.co.jp/disoft_DL/PMHMAC_DL/mac?fm=ttl&fm=ja"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/([^/]+)/PMHOME_(\d+)DL\.dmg}i)
      next if match.blank?

      "#{match[2].split("", 3).join(".")},#{match[1]}"
    end
  end

  pkg "PMH_INST.pkg"

  uninstall pkgutil:   "com.sony.pkg.PMHInstaller",
            launchctl: [
              "com.sony.SonyAutoLauncher.agent",
              "com.sony.WirelessAutoImportLauncher.agent",
            ]

  zap trash: [
    "/Applications/PMHMac.app",
    "/Applications/Wireless Auto Import.app",
  ]
end
