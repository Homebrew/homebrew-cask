cask 'cubicsdr' do
  version '0.2.0'
  sha256 '0ca38efcc5355585a1fdcb8f617bcc6bc4031513aa33d7117fe3c426892321bb'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '99f6b7502f66e40a6a940da7fd5c57b5b2daa39ee7162afdf45b4c53300d5733'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
