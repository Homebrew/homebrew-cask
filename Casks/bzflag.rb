cask 'bzflag' do
  version '2.4.4'
  sha256 'c832896a65cd3a0bdca62fce8a0fff800c15970dfde75e9f8285e49a01dafc77'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-MacOSX.zip"
  name 'BZFlag'
  homepage 'http://bzflag.org/'
  license :gpl

  app "BZFlag-#{version}.app"
end
