cask "nextcloud-office" do
  version "9.3.8"
  sha256 "93845ab6af8873c187d23ba4a277df25bfd70cc6824936e6a817060044651fd3"

  url "https://github.com/nextcloud-releases/Office-DesktopEditors/releases/download/v#{version}/Nextcloud-Office-DesktopEditors-#{version}-0-macos-arm64.dmg"
  name "Nextcloud Office"
  desc "Desktop editors for documents, spreadsheets and presentations"
  homepage "https://nextcloud.com/office/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Nextcloud Office.app"

  zap trash: [
    "~/Library/Application Support/asc.nextcloud-office.Nextcloud-Office",
    "~/Library/Preferences/asc.nextcloud-office.Nextcloud-Office.plist",
  ]
end
