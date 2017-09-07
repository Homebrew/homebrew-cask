cask 'cubicsdr' do
  version '0.2.2'
  sha256 'e0099a2c8fefc1a997057b95f72c74769c3e0f91b8821f1cd7f494f609c477cb'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '6ca500dc8de9dafd9b142be8c3b40120b19809cd19d7bc610b19ee0ab7c9ae64'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
