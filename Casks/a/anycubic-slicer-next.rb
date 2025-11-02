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
  homepage "https://www.anycubic.com/"

  livecheck do
    url "https://wiki.anycubic.com/en/software-and-app/new-page-anycubic-slicer-beta(orca-version)/anycubic-slicer-next-(orca-version)-update-record"
    strategy :page_match do |page|
      page.scan(/V(\d+(?:\.\d+)+)/i).flatten.first
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
