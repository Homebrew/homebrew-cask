cask "second-life-viewer" do
  version "7.1.5.8443591509"
  sha256 "e5bfefa2f241727b5cf5dd6fa788c1072f64c8fe4a40fb2b850726398a7bd401"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name "Linden Lab Second Life Viewer"
  desc "3D browsing software for Second Life online virtual world"
  homepage "https://secondlife.com/"

  livecheck do
    url "https://secondlife.com/support/downloads/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Second_Life_(\d+(?:_\d+)+)_x86_64\.dmg}i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  depends_on macos: ">= :sierra"

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
