cask "second-life-viewer" do
  version "6.6.6.575990"
  sha256 "02dcc31a65eb7133a609844c0ef4a6ca1de339bc670fc378c0d76831ef7c089e"

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
