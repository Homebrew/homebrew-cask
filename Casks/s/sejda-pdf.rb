cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.9.3"
  sha256 arm:   "e0ec4428edc7caf8872b823dae90421d715f62f029cca03b856b14eff4a1f800",
         intel: "4ae55995bf2e70796654672668ab02c4cf4e8672fed79592a2b2a4864092a52c"

  url "https://downloads.sejda-cdn.com/sejda-desktop_#{version}#{arch}.dmg",
      verified: "downloads.sejda-cdn.com/"
  name "Sejda PDF Desktop"
  desc "PDF editor"
  homepage "https://www.sejda.com/en/desktop"

  livecheck do
    url :homepage
    regex(/mac\s*:\s*["']sejda[._-]desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Sejda PDF Desktop.app"

  zap trash: [
    "~/.sejda",
    "~/.sejda-desktop",
    "~/Library/Application Support/Sejda PDF Desktop",
    "~/Library/Preferences/com.sejda.sejda-desktop.plist",
    "~/Library/Saved Application State/com.sejda.sejda-desktop.savedState",
  ]
end
