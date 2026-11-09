cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.28"
  sha256 arm:   "3d255e02e1afc47d2688b79dabf2b72228147d70d544cddf0e3fa5ea043dc1f4",
         intel: "9d10f28ef70f85e7c792ef07d0caa8b30bd02e28cc0fc8a2e38d33430a667466"

  url "https://www.advancedrenamer.com/down/macos/#{arch}/AdvancedRenamer_#{version.dots_to_underscores}.dmg"
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

  depends_on :macos

  app "Advanced Renamer.app"

  uninstall quit: "com.HulubuluSoftware.AdvancedRenamer"

  zap trash: [
    "~/Library/Application Support/Advanced Renamer",
    "~/Library/Caches/com.HulubuluSoftware.AdvancedRenamer",
    "~/Library/HTTPStorages/com.HulubuluSoftware.AdvancedRenamer",
    "~/Library/Saved Application State/com.HulubuluSoftware.AdvancedRenamer.savedState",
  ]
end
