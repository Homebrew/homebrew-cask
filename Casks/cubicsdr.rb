cask 'cubicsdr' do
  version '0.2.2'
  sha256 'e0099a2c8fefc1a997057b95f72c74769c3e0f91b8821f1cd7f494f609c477cb'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '5683e9da113bc2e07f43b57837d80d02ac3853df256b34a9bbd8eb76e633d842'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
