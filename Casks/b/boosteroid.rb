cask "boosteroid" do
  version "1.8.11"
  sha256 :no_check

  on_arm do
    url "https://boosteroid.com/macos_ARM/installer/boosteroid-install-arm64.dmg",
        user_agent: :fake
  end
  on_intel do
    url "https://boosteroid.com/macos/installer/boosteroid-install-x64.dmg",
        user_agent: :fake
  end

  name "Boosteroid"
  desc "Cloud gaming service"
  homepage "https://boosteroid.com/"

  livecheck do
    url "https://boosteroid.com/macos_ARM/client/changelog.md"
    strategy :page_match do |page|
      page.scan(/\[(\d+(?:\.\d+)+)\]/i).map { |match| match[0] }
    end
  end

  depends_on macos: ">= :catalina"

  app "Boosteroid.app"

  zap trash: [
    "~/Library/Application Support/Boosteroid Games S.R.L.",
    "~/Library/Caches/Boosteroid Games S.R.L.",
    "~/Library/Preferences/com.boosteroid-games-s-r-l.Boosteroid.plist",
    "~/Library/Saved Application State/com.boosteroid.macclient.savedState",
  ]
end
