cask "avast-secure-browser" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_arm do
    version "123.0.5368.122"
    sha256 "1c8bef88cbd2615a356be030137651cd4aec20c754075a385321d237e718a811"
  end
  on_intel do
    version "123.0.5380.122"
    sha256 "2469957b81f0ad0a1110cfba0b208a3d2196f63e5e334b2bfa5bbd60c01e2b12"
  end

  url "https://cdn-update.avast.securebrowser.com/browser/mac/#{arch}/#{version}/AvastSecureBrowser.dmg",
      verified: "cdn-update.avast.securebrowser.com/"
  name "Avast Secure Browser"
  desc "Web browser focusing on privacy"
  homepage "https://www.avast.com/secure-browser#mac"

  livecheck do
    url "https://update.avastbrowser.com/sparkle/browser#{livecheck_arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

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
