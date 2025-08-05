cask "ripx" do
  version "7.5.1"
  sha256 "d50916d2a066cffcbfb640fa1e6e9e7e4a364ec1f5fcaa9bad400f580ded7442"

  url "https://s3.us-east-2.amazonaws.com/downloads.hitnmix.com/RipXDAW_#{version.no_dots}.dmg",
      verified: "s3.us-east-2.amazonaws.com/downloads.hitnmix.com/"
  name "RipX"
  desc "Music stem separation and repair utility"
  homepage "https://hitnmix.com/"

  livecheck do
    url "https://hitnmix.com/changes/"
    regex(/^\s*v?(\d+(?:\.\d+)+)\s+changes(?:\s+\([^)]+?\))?(?:\s*(?:&[^;]+?;|.)?\s*mac(?:OS)?\s+Only)?\s*$/i)
    strategy :page_match do |page, regex|
      page.scan(%r{<h3[^>]*?>.+?</h3>}i).map do |match|
        # Remove HTML tags from text to simplify matching
        match = match.gsub(/<[^>]+?>/, "").match(regex)
        next if match.blank?

        match[1]
      end
    end
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
