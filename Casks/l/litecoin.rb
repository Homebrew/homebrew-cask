cask "litecoin" do
  version "0.21.5.8"
  sha256 "6ea3b94379be34239a521b410260dc92b1fed0e436c2ffb1b72a5065ed5db5c1"

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

  uninstall quit: "org.litecoin.Litecoin-Qt"

  zap trash: [
    "~/Library/Application Support/Litecoin",
    "~/Library/Preferences/org.litecoin.Litecoin-Qt.plist",
    "~/Library/Saved Application State/org.litecoin.Litecoin-Qt.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
