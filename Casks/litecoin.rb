cask "litecoin" do
  version "0.18.1"
  sha256 "b81d9101c6ecb38b7699cf3d05ab57df7922f40f23c8a3377750c335d7102266"

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
end
