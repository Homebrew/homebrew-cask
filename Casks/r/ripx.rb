cask "ripx" do
  version "7.0.2"
  sha256 "ba87607b0e1ce334320d169761d8b3d3f5832696bd83c2afa34c0a5bc6acd485"

  url "https://s3.us-east-2.amazonaws.com/downloads.hitnmix.com/RipXDAW_#{version.no_dots}.dmg",
      verified: "s3.us-east-2.amazonaws.com/downloads.hitnmix.com/"
  name "RipX"
  desc "Music stem separation and repair utility"
  homepage "https://hitnmix.com/"

  livecheck do
    url "https://hitnmix.com/changes/"
    regex(/v?(\d+(?:\.\d+)+)\s*changes/i)
  end

  depends_on macos: ">= :sierra"

  pkg "RipX DAW.pkg"

  uninstall pkgutil: [
              "com.hitnmix.HitnMix.pkg",
              "com.hitnmix.infinity.link.pkg",
              "com.hitnmix.infinity.linkara.pkg",
            ],
            delete:  [
              "/Applications/RipX.app",
              "/Library/Application Support/Avis/Audio/Plugins/RipLink.aaxplugin",
              "/Library/Audio/Plug-Ins/VST3/RipLink.vst3",
            ]

  zap trash: "~/Library/Preferences/com.hitnmix.HitnMix.plist"
end
