cask "nucleo" do
  arch arm: "-silicon"

  version "4.2.1"
  sha256 arm:   "cca86613584f78cdb3793e1eabfb52694c9f6f673dec14522ebd6cd02fa6b3db",
         intel: "0d4bdeab86d2e9266d02a4eeff4296b2b2b2139b9889b7b6ffbf4a77280e7a1a"

  url "https://downloads.nucleoapp.com/mac#{arch}/Nucleo_#{version}.zip"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    regex(/href=.*?Nucleo[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on :macos

  app "Nucleo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.ambercreative.nucleo.sfl*",
    "~/Library/Application Support/Nucleo",
    "~/Library/Logs/Nucleo",
    "~/Library/Preferences/co.ambercreative.nucleo.plist",
    "~/Library/Saved Application State/co.ambercreative.nucleo.savedState",
  ]
end
