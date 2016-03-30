cask 'cuda-z' do
  version '0.10.251'
  sha256 '552081ce1f632a72231dedeb6c3ddb02b352d0b19eea45f9ae27d930ee9d7c35'

  url "http://downloads.sourceforge.net/sourceforge/cuda-z/CUDA-Z-#{version}.dmg"
  name 'CUDA-Z'
  homepage 'http://cuda-z.sourceforge.net'
  license :gpl

  app 'CUDA-Z.app'
end
