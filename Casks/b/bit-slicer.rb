cask "bit-slicer" do
  version "1.8.0"
  sha256 "4651c4d98541b5caa0747dd35c597252c80b0a635aa2ba821da8f1b1680ef759"

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
