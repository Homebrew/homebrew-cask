cask 'ndm' do
  version '0.0.5-beta'
  sha256 '61ca8bd11d297e075ae969b3222cd8e072dc4b615e3ec8797781d82a8e9be747'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '986240f18ce25bbb5bb42db29eeb5eaea52b1d1dc7dc01494eb4d802d2785e4d'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
