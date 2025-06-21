cask "ringcentral" do
  arch arm: "-arm64"

  version "25.2.20"
  sha256 :no_check

  url "https://app.ringcentral.com/download/RingCentral#{arch}.pkg"
  name "RingCentral"
  desc "Team messaging, video meetings, and business phone"
  homepage "https://www.ringcentral.com/download.html"

  livecheck do
    url "https://support.ringcentral.com/release-notes/ringex/desktop-webapp.html"
    regex(/Version[\s\u00A0]+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "RingCentral#{arch}.pkg"

  uninstall quit:    "RingCentral",
            pkgutil: "com.ringcentral.glip"

  zap trash: [
        "~/Library/Application Support/RingCentral",
        "~/Library/Logs/RingCentral",
        "~/Library/Preferences/com.ringcentral.glip.plist",
        "~/Library/Saved Application State/com.ringcentral.glip.savedState",
      ],
      rmdir: "~/Documents/RingCentral"
end
