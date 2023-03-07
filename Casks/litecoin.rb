cask "litecoin" do
  version "0.21.2.2"
  sha256 "c13c0e436e123d6593b55ded38feafffb3c23e94d7cbcfef03d65192e620d973"

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name "Litecoin"
  desc "Cryptocurrency wallet"
  homepage "https://litecoin.org/"

  livecheck do
    url "https://github.com/litecoin-project/litecoin"
    strategy :github_latest
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
end
