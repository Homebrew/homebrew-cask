cask 'bzflag' do
  version '2.4.14'
  sha256 '1a4a7c498e276ad3762fe0c8d6bed5e5664bb6548b09081af25da0e308fb4c4b'

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  depends_on macos: '>= :lion'

  app "BZFlag-#{version}.app"
end
