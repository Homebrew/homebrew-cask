cask "second-life-viewer" do
  version "26.1.1.23806384790"
  sha256 "2607b5dc5d05cdb130ee689a820ba2916106fa289e540b8489e9facc5ee76305"

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
