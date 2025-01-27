cask "bit-slicer" do
  version "1.8.1"
  sha256 "5bd60a027c1b37471aa38f2d2fdefc9d5c1428e7a979215d96ae9523b1c00952"

  url "https://github.com/zorgiepoo/Bit-Slicer/releases/download/#{version}/Bit.Slicer.dmg"
  name "Bit Slicer"
  desc "Universal game trainer"
  homepage "https://github.com/zorgiepoo/bit-slicer/"

  depends_on macos: ">= :mojave"

  app "Bit Slicer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zgcoder.bitslicer.sfl*",
    "~/Library/Preferences/com.zgcoder.BitSlicer.plist",
    "~/Library/Saved Application State/com.zgcoder.BitSlicer.savedState",
  ]
end
