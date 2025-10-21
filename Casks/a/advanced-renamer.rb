cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.18.1"
  sha256 arm:   "f7bf11da03a1aa799fb5d96739654a979aa1321dbf30a687ffb9c6d96bfc1d4e",
         intel: "c677fcfde25852e3d43201fb1a222e0e7e2a13991b386696a354607e874f1768"

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
