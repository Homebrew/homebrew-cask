cask "daedalus-catalyst" do
  version "1.0.0-CT,15593"
  sha256 "193f60ff8b70d0e0e36df7e77ebc69a1f0af562b64da3f2b0097e978a4a6fb6e"

  url "https://iohk-vit-installers.s3.amazonaws.com/daedalus-#{version.before_comma}-mainnet_catalyst-#{version.after_comma}.pkg",
      verified: "iohk-vit-installers.s3.amazonaws.com/"
  appcast "https://iohk-vit-installers.s3.amazonaws.com/daedalus-latest-version.json"
  name "Daedalus Catalyst"
  desc "Daedalus cryptocurrency wallet for registering to vote on Catalyst Funds"
  homepage "https://daedaluswallet.io/en/catalyst/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-mainnet_catalyst-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet_catalyst.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Catalyst",
    "~/Library/Preferences/com.electron.daedalus-catalyst.plist",
    "~/Library/Saved Application State/com.electron.daedalus-catalyst.savedState",
  ]
end
