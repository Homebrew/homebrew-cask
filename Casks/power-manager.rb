cask 'power-manager' do
  version '4.5.0'
  sha256 '63beadb6631f76646214d90570d78704f4a54c7f129ebea259a232b29b94d296'

  url "http://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          :sha256 => '6264d35d55220a128a1025cd50d3b22f70eeb15bbaf09b40ceacb50971a047fc'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  pkg 'DssW Power Manager.pkg'

  uninstall :script => '/Library/Application Support/Power Manager/Remove Power Manager.app/Contents/Resources/Remove Power Manager.sh'
end
