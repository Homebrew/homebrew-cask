cask "ripx" do
  version "8.0.1"
  sha256 "3d6c4097b0f23f511ac4bbe240596e2cef5c6bbbf175a357d98de8e874d2c9fe"

  url "https://s3.us-east-2.amazonaws.com/downloads.hitnmix.com/RipXDAW_#{version.no_dots}.dmg",
      verified: "s3.us-east-2.amazonaws.com/downloads.hitnmix.com/"
  name "RipX"
  desc "Music stem separation and repair utility"
  homepage "https://hitnmix.com/"

  livecheck do
    url "https://hitnmix.com/changes/"
    regex(/^\s*v?(\d+(?:\.\d+)+)\s+changes(?:\s+\([^)]+?\))?(?:\s*(?:&[^;]+?;|.)?\s*mac(?:OS)?\s+Only)?\s*$/i)
    strategy :page_match do |page, regex|
      page.scan(%r{<h3[^>]*?>(.+?)</h3>}i).map do |match|
        # Remove HTML tags from text to simplify matching. This iterates a fixed
        # number of times (more than we should ever need), so we don't have to
        # worry about an endless loop.
        text = match[0]
        previous = nil
        while text != previous
          previous = text
          text = text.gsub(/<[^>]+?>/, "")
        end

        text[regex, 1]
      end
    end
  end

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
