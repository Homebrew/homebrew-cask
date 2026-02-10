cask "boosteroid" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "_ARM"

  version "1.10.4"
  sha256 :no_check

  url "https://boosteroid.com/macos#{folder}/installer/boosteroid-install-#{arch}.dmg",
      user_agent: :browser
  name "Boosteroid"
  desc "Cloud gaming service"
  homepage "https://boosteroid.com/"

  livecheck do
    url "https://boosteroid.com/macos#{folder}/client/changelog.md",
        user_agent: :browser
    regex(/\[\s*\v?(\d+(?:\.\d+)+)\s*\]/i)
  end

  app "Boosteroid.app"

  zap trash: [
    "~/Library/Application Support/Boosteroid Games S.R.L.",
    "~/Library/Caches/Boosteroid Games S.R.L.",
    "~/Library/Preferences/com.boosteroid-games-s-r-l.Boosteroid.plist",
    "~/Library/Saved Application State/com.boosteroid.macclient.savedState",
  ]
end
