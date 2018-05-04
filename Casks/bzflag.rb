cask 'bzflag' do
  version '2.4.14'
  sha256 '9b2a5d8c23889c7f65d288fa22a2b841318d023667f322523cb0fd3bfae13f77'

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: '970ab66908c23d33a4f8000dfb05a7eee28dd8ba3237b990b7b18386dd9d7365'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  depends_on macos: '>= :lion'

  app "BZFlag-#{version}.app"
end
