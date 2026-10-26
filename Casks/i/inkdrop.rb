cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0"
  sha256 arm:   "70b74ba58208a75ebfb8a68943272cf41c670dfb7722a596d0708ac1e9764fa2",
         intel: "55df67c378393fd7e13e6c45dff2cdd12981d6bcfc906a999d7ca61df4fa7e78"

  url "https://dist.inkdrop.app/releases/inkdrop-#{version}-#{arch}-mac.zip"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.app/"

  livecheck do
    url "https://dist.inkdrop.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.pkpk.inkdrop.sfl*",
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
