cask "amorphousdiskmark" do
  version "1.2.3,9"
  sha256 :no_check

  url "https://katsurashareware.com/dl/AmorphousDiskMark.zip"
  name "AmorphousDiskMark"
  desc "App to measure storage read/write performance"
  homepage "https://katsurashareware.com/amorphousdiskmark/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "AmorphousDiskMark.app"

  zap trash: [
    "~/Library/Preferences/com.katsurashareware.AmorphousDiskMark.plist",
    "~/Library/Saved Application State/com.katsurashareware.AmorphousDiskMark.savedState",
  ]

  caveats do
    <<~EOS
      Newer versions are only available on the Mac App Store.
    EOS
  end
end
