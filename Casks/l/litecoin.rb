cask "litecoin" do
  version "0.21.5.7"
  sha256 "08e3ec1473b25afc0d222fefaec457ecdf316b3e29ce164f1269fc9289dfd4f0"

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
