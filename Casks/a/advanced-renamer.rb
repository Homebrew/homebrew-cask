cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.27"
  sha256 arm:   "b330ccd310d0be91bea7c80c5b4c6e1920c17275e84c542af9f9d54748727e81",
         intel: "2dffd085dfcde131359a597d2670cec5987c511489ee4ccc7849668f61eff76c"

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
