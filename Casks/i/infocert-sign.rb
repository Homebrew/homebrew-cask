cask "infocert-sign" do
  version "3.1.0.200"
  sha256 :no_check

  url "https://rinnovofirma.infocert.it/infocertsign/international/download/darwin/latest",
      verified: "infocert.it/"
  name "Infocert Sign Desktop International"
  desc "Digital signature and time stamp app, International Edition"
  homepage "https://infocert.digital/consumer/infocert-sign-suite/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: :monterey

  app "Infocert Sign Desktop.app"

  uninstall quit: "it.infocert.desktop.gosign"

  zap trash: [
    "~/.infocertsign",
    "~/Library/Application Support/Infocert Sign Desktop",
    "~/Library/Preferences/it.infocert.desktop.gosign.plist",
    "~/Library/Saved Application State/it.infocert.desktop.gosign.savedState",
  ]
end
