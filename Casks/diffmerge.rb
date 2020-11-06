cask "diffmerge" do
  version "4.2.1.1013"
  sha256 "59efeede7beb69a5b3bf3126787f73930984b3b423094500fe73623656f66d43"

  url "http://download.sourcegear.com/DiffMerge/#{version.major_minor_patch}/DiffMerge.#{version}.intel.stable.dmg"
  name "DiffMerge"
  desc "Visually compare and merge files"
  homepage "https://www.sourcegear.com/diffmerge/"

  app "DiffMerge.app"
  binary "Extras/diffmerge.sh", target: "diffmerge"
  manpage "Extras/diffmerge.1"

  zap trash: [
    "~/Library/Preferences/com.sourcegear.DiffMerge.plist",
    "~/Library/Preferences/SourceGear DiffMerge Preferences",
    "~/Library/Saved Application State/com.sourcegear.DiffMerge.savedState",
  ]
end
