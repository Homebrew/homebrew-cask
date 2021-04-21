cask "second-life-viewer" do
  version "6.4.17.557391"
  sha256 "398fbd895eb18de4eb22140ee240de8a2e4d1d1ac4c84efd997a1962c38fce4e"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name "Linden Lab Second Life Viewer"
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
