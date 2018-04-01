cask 'cuda-z' do
  version '0.10.251'
  sha256 '552081ce1f632a72231dedeb6c3ddb02b352d0b19eea45f9ae27d930ee9d7c35'

  url "https://downloads.sourceforge.net/cuda-z/CUDA-Z-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/cuda-z/rss',
          checkpoint: '6291e2942dc61780128249e6c5298d54b5eed1b9729b4d829b78632d1d4b7348'
  name 'CUDA-Z'
  homepage 'http://cuda-z.sourceforge.net/'

  app 'CUDA-Z.app'
end
