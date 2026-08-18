cask "second-life-viewer" do
  version "26.3.0.31203661088"
  sha256 "8db48984af434bbaeb89ec39af94bc846cb813cf19f6bee5edb91e151a545804"

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

  depends_on macos: :big_sur

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
