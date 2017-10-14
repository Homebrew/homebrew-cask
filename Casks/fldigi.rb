cask 'fldigi' do
  version '4.0.10'
  sha256 '01d977ea0046a382b40f7699ae1f33013f1aa51671ed2ab8c5a97784a0ccc3ea'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'dc482a426612074db67e3a5c734f90ba35a15095ebfbfdf2081849fd7b4330bf'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
