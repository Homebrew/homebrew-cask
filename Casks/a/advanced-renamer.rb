cask "advanced-renamer" do
  arch arm: "arm", intel: "intel"

  version "4.16"
  sha256 arm:   "ad127d3b7928e7f790a6f5404a9be613471d8727b2510b33ede824794db6dc7e",
         intel: "883a6bb0da4adffaabaf1fe796187d4ffc5e0ca15fee40886f5c46abb78d164e"

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
