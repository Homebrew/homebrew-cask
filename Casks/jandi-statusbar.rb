cask "jandi-statusbar" do
  version "1.11"
  sha256 "daad5f0c918a50dfb23e3235c4fead7115039358a1d8362cec86d61419bf91f0"

  url "https://github.com/techinpark/Jandi/releases/download/v#{version}/jandi.dmg"
  name "jandi"
  desc "Github Contributions in your status bar"
  homepage "https://github.com/techinpark/Jandi"

  livecheck do
    skip "No reliable way to get version info"
  end

  app "jandi.app"

  zap trash: [
    "~/Library/Caches/com.tmsae.jandi",
    "~/Library/Preferences/com.tmsae.jandi.plist",
  ]
end
