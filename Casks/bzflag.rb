cask 'bzflag' do
  version '2.4.16'
  sha256 'c90eeecfde87d35e1d14b2be865b291fb1223a6c7ef5345ea4b7ae0a3fc035e6'

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  depends_on macos: '>= :lion'

  app "BZFlag-#{version}.app"
end
