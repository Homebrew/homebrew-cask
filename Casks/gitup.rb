cask 'gitup' do
  version '1.0.7'
  sha256 'b5bfe8c1802b1c7f72359214e58b2c768c5b7a573d6579a3101f8932b81d308f'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: 'e28488300af69d4eb5c2eb24d2d3e4e31a9fc5606b27e5a4c936216a7cc1022a'
  name 'GitUp'
  homepage 'http://gitup.co/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"
end
