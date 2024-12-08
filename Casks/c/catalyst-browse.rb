cask "catalyst-browse" do
  version "1.1"
  sha256 "3c7251bc7425a3368fa486037d3cb99dd1eabbe3e4b15b6726414007d18b41e4"

  url "https://support.d-imaging.sony.co.jp/disoft_DL/CatalystBrowse_DL/mac?fm=eu",
      verified: "support.d-imaging.sony.co.jp/disoft_DL/"
  name "Catalyst Browse"
  desc "Efficient, fast, and precise video production application using camera logs and metadata"
  homepage "https://creatorscloud.sony.net/catalog/en-us/catalyst/index.html"

  livecheck do
    url "https://support.d-imaging.sony.co.jp/disoft_DL/CatalystBrowse_DL/mac?fm=eu"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Catalyst Browse.app"

  zap trash: [
    "~/Library/Application Support/Catalyst Browse",
    "~/Library/Preferences/com.sony.CatalystBrowse.plist",
    "~/Library/Saved Application State/com.sony.CatalystBrowse.savedState"
  ]
end