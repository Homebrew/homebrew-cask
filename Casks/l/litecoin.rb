cask "litecoin" do
  version "0.21.4"
  sha256 "1ae347f6e77c10f857d98a18b778ec4fc2449b7bb51c425bad726b02cb9ef876"

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name "Litecoin"
  desc "Cryptocurrency wallet"
  homepage "https://litecoin.org/"

  livecheck do
    url :homepage
    regex(/href=.*?litecoin[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Litecoin-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Litecoin-Qt.app", "0755"
  end

  postflight do
    set_permissions "#{appdir}/Litecoin-Qt.app", "0555"
  end

  uninstall_preflight do
    set_permissions "#{appdir}/Litecoin-Qt.app", "0755"
  end

  zap trash: [
    "~/Library/Application Support/Litecoin",
    "~/Library/Preferences/org.litecoin.Litecoin-Qt.plist",
    "~/Library/Saved Application State/org.litecoin.Litecoin-Qt.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
