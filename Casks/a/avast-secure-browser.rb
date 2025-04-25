cask "avast-secure-browser" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_arm do
    version "134.0.6335.179"
    sha256 "bd9a7f00c447ff7d240a05331efa6f5d65aeb89f2a54072c007243dfbb0bb41f"
  end
  on_intel do
    version "134.0.6336.179"
    sha256 "d8748c385be6f104c08ebb49567206ff81dcd294abf8d93bc0fae342d185be94"
  end

  url "https://cdn-update.avast.securebrowser.com/browser/mac/#{arch}/#{version}/AvastSecureBrowser.dmg",
      verified: "cdn-update.avast.securebrowser.com/browser/mac/"
  name "Avast Secure Browser"
  desc "Web browser focusing on privacy"
  homepage "https://www.avast.com/secure-browser#mac"

  livecheck do
    url "https://update.avastbrowser.com/sparkle/browser#{livecheck_arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Avast Secure Browser.app"

  zap trash: [
        "~/Library/Application Support/AVAST Software/Browser",
        "~/Library/Caches/AVAST Software/Browser",
        "~/Library/Caches/com.avast.browser",
        "~/Library/Preferences/com.avast.AvastSecureBrowser.plist",
        "~/Library/Preferences/com.avast.browser.plist",
        "~/Library/Saved Application State/com.avast.browser.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/AVAST Software",
        "~/Library/Caches/AVAST Software",
      ]
end
