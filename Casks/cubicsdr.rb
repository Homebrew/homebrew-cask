cask 'cubicsdr' do
  version '0.2.0,rc2'
  sha256 '14bc59bcfc1ceb04532bf89ec99199d17f9bcbff75a38c22d33920c866a828e6'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version.before_comma}-beta-#{version.after_comma}/CubicSDR-#{version.before_comma}-Darwin-#{version.after_comma}.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '253b4817796c7e5ccc2f7934e6ebe0397b62e4dbcfc03336454c5a96d753f09c'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'
  license :gpl

  app 'CubicSDR.app'
end
