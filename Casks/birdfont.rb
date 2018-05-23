cask 'birdfont' do
  version '3.6.2'
  sha256 '4d261383ae72e370bc07fdb8dbf896d5a5a229c3771bbce006b88ddad0ba16ae'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end
