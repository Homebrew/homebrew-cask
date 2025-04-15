cask "second-life-viewer" do
  version "7.1.13.14343205944"
  sha256 "9500d796e8be9ed0f9cae7234f7205babf45298e604c161e98ab1d463bbe48b7"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
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

  caveats do
    requires_rosetta
  end
end
