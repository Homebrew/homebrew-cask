cask "litecoin" do
  version "0.21.2"
  sha256 "39d0df6aecace19e91c9849d09aaeb60c0bb73b34a97c7b8ccae402da634cfa2"

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
