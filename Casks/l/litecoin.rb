cask "litecoin" do
  version "0.21.5.6"
  sha256 "8eae361597a1698d61bac73e89d6aed8a32578db24be5e42958a583d7abf7276"

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name "Litecoin"
  desc "Cryptocurrency wallet"
  homepage "https://litecoin.org/"

  livecheck do
    url "https://download.litecoin.org/"
    regex(%r{href=["']?litecoin[._-]v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on :macos

  app "Litecoin-Qt.app"

  preflight_steps do
    set_permissions "Litecoin-Qt.app", "0755"
  end

  postflight_steps do
    set_permissions "Litecoin-Qt.app", "0555", base: :appdir
  end

  uninstall_preflight_steps do
    set_permissions "Litecoin-Qt.app", "0755", base: :appdir
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
