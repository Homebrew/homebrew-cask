cask 'fldigi' do
  version '4.0.12'
  sha256 'ebbab8f04ac20f2d1b4b6236ccf865d73e215fc16f190563e3012259c69c3a04'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.univ.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'b51b27ac8eba6d9592913d9f4d4444fb52f50f46c933b156eb1c80cdf0675a53'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
