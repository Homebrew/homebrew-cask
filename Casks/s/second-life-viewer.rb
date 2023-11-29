cask "second-life-viewer" do
  version "7.0.1.6894459864"
  sha256 "70907b2ee229f8aa70b794d7add45e79d2d62d2f1c15c5f9ab2deefed3fc18a0"

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
