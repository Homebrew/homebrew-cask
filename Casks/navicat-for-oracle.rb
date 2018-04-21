cask 'navicat-for-oracle' do
  version '12.0.24'
  sha256 'e2ee43bf0938743d4576ac7d110783e853e2505f7f126b9042e6da254a02c67b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: '4f2271badbb13f5318903999613a90a9278fd7235817180dcd3761cc29b6192e'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
