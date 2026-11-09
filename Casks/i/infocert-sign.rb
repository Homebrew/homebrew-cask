cask "infocert-sign" do
  version "3.1.2.686"
  sha256 :no_check

  url "https://rinnovofirma.infocert.it/infocertsign/international/download/darwin/latest"
  name "Infocert Sign Desktop International"
  desc "Digital signature and time stamp app, International Edition"
  homepage "https://infocert.digital/consumer/infocert-sign-suite/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: :monterey

  app "InfocertSignDesktop.app"

  uninstall quit: "it.infocert.desktop.gosign"

  zap trash: [
    "~/.infocertsign",
    "~/Library/Application Support/Infocert Sign Desktop",
    "~/Library/Preferences/it.infocert.desktop.gosign.plist",
    "~/Library/Saved Application State/it.infocert.desktop.gosign.savedState",
  ]
end
