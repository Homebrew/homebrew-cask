cask "second-life-viewer" do
  version "6.4.21.561414"
  sha256 "0742cc7748682e7f924f7955a80b4a947d58663128429fde28f5a12635b0102b"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name "Linden Lab Second Life Viewer"
  desc "3D browsing software for Second Life online virtual world"
  homepage "https://secondlife.com/"

  livecheck do
    url "https://secondlife.com/support/downloads/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Second_Life_(\d+(?:_\d+)*)_x86_64\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
