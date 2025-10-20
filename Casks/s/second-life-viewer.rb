cask "second-life-viewer" do
  version "7.2.2.18475198968"
  sha256 "29e649f42cbe15ff5e91a2dff27cac5aebf63e13f1f991ba3de45f46a70b7507"

  url "https://viewer-download.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name "Linden Lab Second Life Viewer"
  desc "3D browsing software for Second Life online virtual world"
  homepage "https://secondlife.com/"

  livecheck do
    url "https://secondlife.com/downloads"
    regex(/href=.*?Second[._-]Life[._-]v?(\d+(?:[._]\d+)+)(?:[._-]x86_64)?\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  depends_on macos: ">= :big_sur"

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
