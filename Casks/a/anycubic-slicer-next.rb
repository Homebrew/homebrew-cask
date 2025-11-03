cask "anycubic-slicer-next" do
  version "1.3.7.3"
  sha256 :no_check

  on_arm do
    url "https://cdn.cloud-platform.anycubic.com/file/2025/09/28/dmg/68d905e851e28229897aa0a118a4ba56/codesign_20250928_152423_AnycubicSlicerNext_arm64.dmg"
  end
  on_intel do
    url "https://cdn.cloud-platform.anycubic.com/file/2025/09/28/dmg/68d906321ed2dde18ce952567b5a041d/codesign_20250928_152423_AnycubicSlicerNext_x86_64.dmg"
  end

  name "Anycubic Slicer Next"
  desc "Slicer for Anycubic 3D printers"
  homepage "https://www.anycubic.com/pages/anycubic-slicer"

  livecheck do
    url "https://wiki.anycubic.com/en/software-and-app/new-page-anycubic-slicer-beta(orca-version)/anycubic-slicer-next-(orca-version)-update-record"
    strategy :page_match do |page|
      latest_version_block = page.match(%r{<h3 class="toc-header"[^>]*>.*?V?(\d+(?:\.\d+)+)</h3>.*?<ul>(.*?)</ul>}m)
      next if latest_version_block.blank?

      version = latest_version_block.captures[0]
      links_html = latest_version_block.captures[1]

      arm_url_match = links_html.match(/href="([^"]*?arm64\.dmg)"/)
      intel_url_match = links_html.match(/href="([^"]*?x86_64\.dmg)"/)

      next if arm_url_match.blank? || intel_url_match.blank?

      version
    end
  end

  depends_on macos: ">= :big_sur"

  app "AnycubicSlicerNext.app"

  zap trash: [
    "~/Library/Application Support/Anycubic Slicer Next",
    "~/Library/Caches/Anycubic Slicer Next",
    "~/Library/Preferences/com.anycubic.slicer.Next.plist",
    "~/Library/Saved Application State/com.anycubic.slicer.Next.savedState",
  ]
end
