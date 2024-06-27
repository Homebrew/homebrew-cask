cask "litecoin" do
  version "0.21.3"
  sha256 "9b36a5b59f2a1632d5ec39f266332648d9148ab2895f4b3fd9ec1a9a6c08ded9"

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name "Litecoin"
  desc "Cryptocurrency wallet"
  homepage "https://litecoin.org/"

  livecheck do
    url :homepage
    regex(/href=.*?litecoin[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

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
