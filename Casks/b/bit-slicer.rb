cask "bit-slicer" do
  version "1.9.0"
  sha256 "da1f6f9b33cbf86bda4b73d79826e2862234c7e658d442f67ae621aac0a95bdf"

  url "https://github.com/zorgiepoo/Bit-Slicer/releases/download/#{version}/Bit.Slicer.dmg"
  name "Bit Slicer"
  desc "Universal game trainer"
  homepage "https://github.com/zorgiepoo/bit-slicer/"

  depends_on macos: ">= :big_sur"

  app "Bit Slicer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zgcoder.bitslicer.sfl*",
    "~/Library/Preferences/com.zgcoder.BitSlicer.plist",
    "~/Library/Saved Application State/com.zgcoder.BitSlicer.savedState",
  ]
end
