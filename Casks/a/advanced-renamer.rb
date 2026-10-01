cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.26"
  sha256 arm:   "5b9787aa97137cc0fa575fe9a35ce257e379bbe2a21ea872135ef450240fa381",
         intel: "3284bfab50378b2fe978f7262d4a727caadd6dce57c91198d81c1e8866adee53"

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
