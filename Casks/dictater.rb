cask 'dictater' do
  version '1.2'
  sha256 '32ae561c93af4979d23c0c8e22f31665a93f4f654539a0c10f725b35a62c9557'

  # github.com/Nosrac/Dictater was verified as official when first introduced to the cask
  url "https://github.com/Nosrac/Dictater/releases/download/#{version}/Dictater.zip"
  appcast 'https://github.com/Nosrac/Dictater/releases.atom',
          checkpoint: '4b76ebc3e9028414dbd22a2928dd2633c27a1ae75e6eec6fa7f8dd5f912b21aa'
  name 'Dictater'
  homepage 'https://nosrac.github.io/Dictater/'
  license :mit

  app 'Dictater.app'
end
