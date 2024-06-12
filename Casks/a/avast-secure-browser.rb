cask "avast-secure-browser" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_arm do
    version "125.0.5572.143"
    sha256 "caed2a00b2b01722396fc767e5db0d29e00f2b76e6e05cc061751577ce4850d1"
  end
  on_intel do
    version "125.0.5576.143"
    sha256 "16cedda3a0e35f339a260d0d1707e4d64c6980644a1d665bc7a9e79d545200b8"
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
