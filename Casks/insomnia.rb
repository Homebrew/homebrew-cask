cask 'insomnia' do
  version '3.5.3'
  sha256 '45380184649e3c3cf95a526c24de1e1afd569117e6a8ce287860785e341f9062'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'
  license :unknown

  app 'Insomnia.app'
end
