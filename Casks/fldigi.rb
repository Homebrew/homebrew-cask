cask 'fldigi' do
  version '4.0.6'
  sha256 '5364eac98775094e2a37f140c5ea0261deaa28d459bf7bf42c36b2965f98cfb7'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '27bbacb30ebbed8e86bd611961027aef90bfaaed00e550e182358d031cf5baa7'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
