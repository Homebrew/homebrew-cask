cask "myukkurivoice" do
  version "0.13.10"
  sha256 "78d2bca86c814ddedada317fd160d9957c3d9ce3aff664485fd26d941ef3c735"

  url "https://github.com/taku-o/myukkurivoice/releases/download/#{version}/MYukkuriVoice-darwin-x64.zip",
      verified: "github.com/taku-o/myukkurivoice/"
  name "MYukkuriVoice"
  desc "Yukkuri text-to-speech software"
  homepage "https://taku-o.github.io/myukkurivoice/"

  app "MYukkuriVoice-darwin-x64/MYukkuriVoice.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.nanasi.myukkurivoice.sfl*",
    "~/Library/Application Support/MYukkuriVoice",
    "~/Library/Preferences/jp.nanasi.myukkurivoice.plist",
  ]

  caveats do
    requires_rosetta
  end
end
