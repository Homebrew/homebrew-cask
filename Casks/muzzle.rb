cask "muzzle" do
  version "1.8,416"
  sha256 "0e2f180113dafdb500708f18f7246dbd58b255c158b1b77aa1d6a819f607791d"

  url "https://muzzleapp.com/binaries/muzzle-#{version.after_comma}.zip"
  name "Muzzle"
  desc "Silence embarrassing notifications while screensharing"
  homepage "https://muzzleapp.com/"

  livecheck do
    url "https://muzzleapp.com/api/1/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Muzzle.app"

  uninstall quit: "com.incident57.Muzzle"

  zap trash: [
    "~/Library/Caches/com.incident57.Muzzle",
    "~/Library/Cookies/com.incident57.Muzzle.binarycookies",
    "~/Library/Preferences/com.incident57.Muzzle.plist",
  ]
end
