cask 'buttercup' do
  version '0.11.1'
  sha256 '8cc59c37b518028ecc9658160486c1f21b336ea57484ddb0e6333e2bf71d0722'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: '8bba0fe2ffb90f0bd29ea83e483ad9a33b7cd96b196b6f6b741a456d43a471a4'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
