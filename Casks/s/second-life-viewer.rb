cask "second-life-viewer" do
  version "26.4.0.37384746592"
  sha256 "e4a32cb3274322dd9c279452b9f514c98ee2da173fda7e337eba7d5f8de7d5ac"

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

  depends_on :macos

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
