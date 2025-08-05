cask "jandi-statusbar" do
  version "1.15"
  sha256 "b2bf4a52247f171d19412b23e5d8a7f461b3d54c2cf3fc7b13bde5afe5457895"

  url "https://github.com/techinpark/Jandi/releases/download/v#{version}/jandi.dmg"
  name "jandi"
  desc "GitHub contributions in your status bar"
  homepage "https://github.com/techinpark/Jandi"

  depends_on macos: ">= :ventura"

  app "jandi.app"

  zap trash: [
    "~/Library/Caches/com.tmsae.jandi",
    "~/Library/Preferences/com.tmsae.jandi.plist",
  ]
end
