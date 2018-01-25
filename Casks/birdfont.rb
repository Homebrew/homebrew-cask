cask 'birdfont' do
  version '3.1.3'
  sha256 '721f71f856fec8972c4d314b4ef8fb54af41baf3845cbef338a7a6a661948750'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end
