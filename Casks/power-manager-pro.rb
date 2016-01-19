cask 'power-manager-pro' do
  version '4.5.0'
  sha256 '5e5e535a9a042313d8b8e0cff88ec3a42ac36b44fcd57282710b0cab8d868596'

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: '435fa5b5df46da8aa8c39d09851b947b5e3f4deb4d7bad9cb57031a9a16228fb'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  app 'Power Manager Pro.app'
end
