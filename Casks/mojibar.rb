cask 'mojibar' do
  version '2.4.0'
  sha256 'fa8e9f9dd9a0c906fe7ef0881448317372ba81dcd17102144805b9743dc1479b'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '23ef35ca06aa5b623fa64421c1d1863ba0534b91b3259730991bc6f95c46e27c'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
