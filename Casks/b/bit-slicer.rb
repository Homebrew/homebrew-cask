cask "bit-slicer" do
  version "1.9.1"
  sha256 "f415616ab804e4bccd6d1069907ef1f16bdd2626266d9bec9723225a00b25524"

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
