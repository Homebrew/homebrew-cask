cask 'dictater' do
  version '1.2'
  sha256 '32ae561c93af4979d23c0c8e22f31665a93f4f654539a0c10f725b35a62c9557'

  # github.com/Nosrac/Dictater was verified as official when first introduced to the cask
  url "https://github.com/Nosrac/Dictater/releases/download/#{version}/Dictater.zip"
  appcast 'https://github.com/Nosrac/Dictater/releases.atom',
          checkpoint: 'ac5eb7ff2a23496ab05e4183e14d9ff99b4656151e423f9f7677fab356277e10'
  name 'Dictater'
  homepage 'https://nosrac.github.io/Dictater/'

  app 'Dictater.app'
end
