cask "ripx" do
  version "8.0.3"
  sha256 "c1a24eeda44dba2bc9a740f412bca5a364e5802494af255e4abfc83321b71d30"

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
