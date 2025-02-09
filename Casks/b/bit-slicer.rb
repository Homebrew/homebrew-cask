cask "bit-slicer" do
  version "1.8.2"
  sha256 "376e15d1c193e532ca5666a07dbc918eca1d549146397bc5e5278ec5db0a425f"

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
