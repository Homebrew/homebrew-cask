cask "boosteroid" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "_ARM"

  version "1.9.1"
  sha256 :no_check

  url "https://boosteroid.com/macos#{folder}/installer/boosteroid-install-#{arch}.dmg",
      user_agent: :fake
  name "Boosteroid"
  desc "Cloud gaming service"
  homepage "https://boosteroid.com/"

  livecheck do
    url "https://boosteroid.com/macos_ARM/client/changelog.md"
    regex(/\[\s*\v?(\d+(?:\.\d+)+)\s*\]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Boosteroid.app"

  zap trash: [
    "~/Library/Application Support/Boosteroid Games S.R.L.",
    "~/Library/Caches/Boosteroid Games S.R.L.",
    "~/Library/Preferences/com.boosteroid-games-s-r-l.Boosteroid.plist",
    "~/Library/Saved Application State/com.boosteroid.macclient.savedState",
  ]
end
