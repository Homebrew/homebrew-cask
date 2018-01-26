cask 'bzflag' do
  version '2.4.12'
  sha256 '5bf28fab219bae32cdfd32765289b3454b7e658ffe49d05ea49c2c03d6749fe7'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: 'bd9b9100c950397795323125b82cf5b21c789cb6defa9ded7962892b24a71df0'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  app "BZFlag-#{version}.app"
end
