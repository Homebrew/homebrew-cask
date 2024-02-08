cask "jandi-statusbar" do
  version "1.14"
  sha256 "78467d64d142694bc8ac6f896ff51b74e8480f974ec448ddcd8e8e09f5040578"

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
