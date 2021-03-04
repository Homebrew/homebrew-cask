cask "jandi-statusbar" do
  version "1.1"
  sha256 "a0ec4ec1fbc7b166841527d7a7142b39cc52f9dc02ae05001f618f120a6dcc70"

  url "https://github.com/techinpark/Jandi/releases/download/v#{version}/jandi.dmg"
  name "jandi"
  desc "Github Contributions in your status bar"
  homepage "https://github.com/techinpark/Jandi"

  app "jandi.app"

  zap trash: [
    "~/Library/Caches/com.tmsae.jandi",
    "~/Library/Preferences/com.tmsae.jandi.plist",
  ]
end
