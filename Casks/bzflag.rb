cask 'bzflag' do
  version '2.4.18'
  sha256 '268151bebde80144c3fc6cb742e8024b822b3cf97e822e278cb4e2f546681e65'

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  depends_on macos: '>= :lion'

  app "BZFlag-#{version}.app"
end
