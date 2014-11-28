cask :v1 => 'ccmenu' do
  version '1.7'
  sha256 '974a2022dbc9494958334ee8f02e08df7ed184e1f421a53d623dfbeaadf08a2c'

  url "https://downloads.sourceforge.net/project/ccmenu/CCMenu/#{version}/ccmenu-#{version}-b.dmg"
  appcast 'http://ccmenu.sourceforge.net/update-stable.xml',
          :sha256 => 'a72951f416906d309cb7ec8d233bf5546540641efa99332e0f1bdde119b51cac'
  homepage 'http://ccmenu.sourceforge.net/'
  license :oss

  app 'CCMenu.app'
end
