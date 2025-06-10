cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.12"
  sha256 arm:   "be628c969cda3a9470f085ca9643ef0aa7c541f674cc057e4f3b153c114f9c46",
         intel: "3738b1991e26777a3574887eb180cd64263ecce775c840a4d725dd68ce5be9a6"

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
