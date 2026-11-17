cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.29"
  sha256 arm:   "1172fe40a4601e9e52eeb4b60689aa3b039fd029abc8e1deaf255ee040625be1",
         intel: "3aca7d44ec3b83487e36cb36382751325936cb14a41c037f8d24aeca7ebc2752"

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
