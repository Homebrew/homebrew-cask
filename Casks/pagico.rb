cask 'pagico' do
  version '8.8.2208'
  sha256 'c648b4d29f6e50e5c101eb811a20d6bec3fe4ec258f961146132228debc36a75'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*'
end
