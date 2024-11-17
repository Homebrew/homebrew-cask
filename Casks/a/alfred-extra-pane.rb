cask "alfred-extra-pane" do
  version "0.2.12"
  sha256 "89b0b62305bf82c88083f61189b40fa0414a932d8c530f1c6d2f1f43ce319c09"

  url "https://github.com/mr-pennyworth/alfred-extra-pane/releases/download/#{version}/AlfredExtraPane.app.zip"
  name "alfred-extra-pane"
  desc "Spotight-like rich previews for Alfred workflows"
  homepage "https://github.com/mr-pennyworth/alfred-extra-pane"

  livecheck do
    url "https://github.com/mr-pennyworth/alfred-extra-pane/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AlfredExtraPane.app"

  zap trash: [
    "~/Library/Application Support/Alfred/Alfred.alfredpreferences/preferences/mr.pennyworth.AlfredExtraPane",
    "~/Library/Caches/mr.pennyworth.AlfredExtraPane",
    "~/Library/HTTPStorages/mr.pennyworth.AlfredExtraPane",
    "~/Library/HTTPStorages/mr.pennyworth.AlfredExtraPane.binarycookies",
    "~/Library/Preferences/mr.pennyworth.AlfredExtraPane.plist",
    "~/Library/WebKit/mr.pennyworth.AlfredExtraPane",
  ]
end
