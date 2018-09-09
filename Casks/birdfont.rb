cask 'birdfont' do
  version '3.12.0'
  sha256 'f024872a3cb21a2ad77631bc030cebef9405256c09eac4611effde3a454bea7a'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end
