cask "proxygen-app" do
  version "4.1.1"
  sha256 :no_check

  url "https://download.proxygen.app/Proxygen.dmg"
  name "Proxygen"
  desc "HTTP proxy tool"
  homepage "https://proxygen.app/"

  livecheck do
    url "https://download.proxygen.app/proxygen.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Proxygen.app"

  uninstall quit: "freshbits.Proxygen"

  zap trash: [
    "~/Library/Application Scripts/freshbits.Proxygen",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/freshbits.proxygen.sfl*",
    "~/Library/Containers/freshbits.Proxygen",
  ]
end
