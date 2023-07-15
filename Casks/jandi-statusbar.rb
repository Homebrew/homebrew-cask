cask "jandi-statusbar" do
  version "1.13"
  sha256 "d377a105436c7f4ea116bbedf49ce55ed8e4c3038be6cc2d13413690b1d992db"

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
