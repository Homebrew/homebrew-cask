cask "second-life-viewer" do
  version "26.1.0.22641522367"
  sha256 "9e8602018c35f53bfe0fc19dcaa20817baf8ac431528ef48b75cbb050643bb41"

  url "https://viewer-download.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_universal.dmg"
  name "Linden Lab Second Life Viewer"
  desc "3D browsing software for Second Life online virtual world"
  homepage "https://secondlife.com/"

  livecheck do
    url "https://secondlife.com/downloads"
    regex(/Second[._-]Life[._-]v?(\d+(?:[._]\d+)+)(?:[._-](?:universal|x86_64))?\.dmg/i)
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
