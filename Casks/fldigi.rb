cask 'fldigi' do
  version '4.0.7'
  sha256 '66466560f28e5e18edeef6673d941e45346bf1a84423766d4ee9a9439032bece'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'e6fff3321535dfd0859c3042833132886967212b1ea19465187c8514f0414962'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
