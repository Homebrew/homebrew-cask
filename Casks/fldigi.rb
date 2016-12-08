cask 'fldigi' do
  version '3.23.17'
  sha256 'f2cc1813b102514627f1c741c0de03d4a6d134daffbb5c7b72f0ee114b22ae9f'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '5e6a0830c6ee325148b63315960b4c045673da0608d8d29da2db5694197be1e7'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
