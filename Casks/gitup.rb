cask 'gitup' do
  version '1.0.6'
  sha256 '420127192b63adfbd6b907c17a4934ffacffe856409dfb53b0696346cfb091d2'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '3fc88622548fe98ef117005b96e4284fcb544e8d52f58b5f8329ebd99cc4a9a2'
  name 'GitUp'
  homepage 'http://gitup.co'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"
end
