cask 'fldigi' do
  version '4.0.5'
  sha256 '44dd15440087c177def8187a3622f76b7d210cd0f220f665b4feffa29c0ab30f'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'b2ed526c7ab311c48ae0e57aae8dab5e458221bdf46dacbd716eebe6b26837a7'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
