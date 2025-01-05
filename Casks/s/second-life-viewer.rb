cask "second-life-viewer" do
  version "7.1.11.12363455226"
  sha256 "bccf6b42464a1bcd10611cd2e2f7e286a95ee1460248763e73875bf295b291b9"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name "Linden Lab Second Life Viewer"
  desc "3D browsing software for Second Life online virtual world"
  homepage "https://secondlife.com/"

  livecheck do
    url "https://secondlife.com/support/downloads/"
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

  caveats do
    requires_rosetta
  end
end
