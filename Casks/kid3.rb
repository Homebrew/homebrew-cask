cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.5.0'
  sha256 '316fd954cb27b076fab1f98d59cf4d670a7f69af6f2ef0bc6e31ed6585d580a7'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '2abcba1fb7b61a782a27b33197700c0d7adcf86c55413c65c450dcecde24e2bd'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
