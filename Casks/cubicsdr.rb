cask 'cubicsdr' do
  version '0.2.0'
  sha256 '0ca38efcc5355585a1fdcb8f617bcc6bc4031513aa33d7117fe3c426892321bb'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '6bc2d8513d0a7646888bd7760b10608567f16e030c2c7fa58498a48e1387749f'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
