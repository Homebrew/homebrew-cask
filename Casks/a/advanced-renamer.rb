cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.17"
  sha256 arm:   "10049686d788b7d205c8ec8c3f7cca6ae5246319c1ec8551489a280c2a8a073f",
         intel: "d7b796531d5a1514f0120f9879d3928d6baaa3ff2a905f1b7b79f594a074378e"

  url "https://www.advancedrenamer.com/down/macos/#{arch}/AdvancedRenamer_#{version.tr(".", "_")}.dmg"
  name "Advanced Renamer"
  desc "Batch file renaming utility"
  homepage "https://www.advancedrenamer.com/"

  livecheck do
    url "https://www.advancedrenamer.com/download"
    regex(%r{href=.*?/#{arch}/AdvancedRenamer[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  depends_on macos: ">= :big_sur"

  app "Advanced Renamer.app"

  zap trash: [
    "~/Library/Caches/com.HulubuluSoftware.AdvancedRenamer",
    "~/Library/HTTPStorages/com.HulubuluSoftware.AdvancedRenamer",
    "~/Library/Saved Application State/com.HulubuluSoftware.AdvancedRenamer.savedState",
  ]
end
