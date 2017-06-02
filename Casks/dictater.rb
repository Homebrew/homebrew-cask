cask 'dictater' do
  version '1.2'
  sha256 '32ae561c93af4979d23c0c8e22f31665a93f4f654539a0c10f725b35a62c9557'

  # github.com/Nosrac/Dictater was verified as official when first introduced to the cask
  url "https://github.com/Nosrac/Dictater/releases/download/#{version}/Dictater.zip"
  appcast 'https://github.com/Nosrac/Dictater/releases.atom',
          checkpoint: '7edc1e7f52a0521bccd3f65018ab94cad819aafe1d5c8fc2334a01969015e897'
  name 'Dictater'
  homepage 'https://nosrac.github.io/Dictater/'

  app 'Dictater.app'
end
