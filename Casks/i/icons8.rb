cask "icons8" do
  # NOTE: "8" is not a version number, but an intrinsic part of the product name
  version "5.7.4"
  sha256 :no_check

  url "https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg"
  name "Icons8 App"
  desc "App for browsing icon, photo and music packages"
  homepage "https://icons8.com/"

  deprecate! date: "2024-07-17", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "Icons8.app"

  zap trash: [
    "~/Library/Application Scripts/com.visualpharm.StandaloneLoginHelper",
    "~/Library/Application Support/com.visualpharm.Icons8",
    "~/Library/Caches/com.visualpharm.Icons8",
    "~/Library/Containers/com.visualpharm.StandaloneLoginHelper",
    "~/Library/Preferences/com.visualpharm.Icons8.plist",
  ]

  caveats do
    requires_rosetta
  end
end
