cask "avast-secure-browser" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_arm do
    version "126.0.5662.184"
    sha256 "c3b721db8e645d17044dc35ae8324f37d839fb758eaf4f7457884b118669edd9"
  end
  on_intel do
    version "126.0.5663.184"
    sha256 "dc54120174d9ea9e102bc40a0789d2cdbc9cd8d617b02a34e8de6f55dfe2e2d3"
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
