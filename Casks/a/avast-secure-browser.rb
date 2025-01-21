cask "avast-secure-browser" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_arm do
    version "131.0.6175.265"
    sha256 "70fb7a59f6d79583903d3f8e8d0e318250da342ab312c417a2c1e365a5956b66"
  end
  on_intel do
    version "131.0.6176.265"
    sha256 "a0bd197756e9c6f1df08c6090528d03ccaf36b49032568441447980f6e016544"
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
