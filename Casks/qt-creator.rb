cask 'qt-creator' do
  version '4.12.3'
  sha256 '3fb78c748fffaceb5fd2658dcac358987ac297b364b2a6ef75be7d1911484dd1'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          must_contain: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
