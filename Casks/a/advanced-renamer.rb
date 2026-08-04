cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.24"
  sha256 arm:   "cf26e534b1a416288d823988e931b05696fa29fd89df9e505a95a68f3729bb46",
         intel: "ea10e8947f74bdca22d9a764aec672540b8402c7194e51ee361e9d6296557350"

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

  depends_on macos: :big_sur

  app "Advanced Renamer.app"

  zap trash: [
    "~/Library/Caches/com.HulubuluSoftware.AdvancedRenamer",
    "~/Library/HTTPStorages/com.HulubuluSoftware.AdvancedRenamer",
    "~/Library/Saved Application State/com.HulubuluSoftware.AdvancedRenamer.savedState",
  ]
end
