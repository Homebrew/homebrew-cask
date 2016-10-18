cask 'bzflag' do
  version '2.4.8'
  sha256 '3b4bdd1b98565b998ff7b6915670cb30b81358203aed27423afb0a5f2bd3a5a9'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: 'dd2c052f3c22f8d0a64fa2230c80fa0113e9a8611963e279d7b6c48cdf908541'
  name 'BZFlag'
  homepage 'https://bzflag.org/'

  app "BZFlag-#{version}.app"
end
