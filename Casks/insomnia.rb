cask 'insomnia' do
  version '3.5.2'
  sha256 '28ca233deca09e44e3c50b60a5ef1deac50ed918963e696ba4d6241a0da6c10f'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'
  license :unknown

  app 'Insomnia.app'
end
