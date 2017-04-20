cask 'arturia-software-center' do
  version '1.1.3.145'
  sha256 '92e8195ff52cc2870a736b400d192917a16aca92560f94ce0a6f592e5fcc4934'

  url "http://downloads.arturia.com/infrastructure/asc/soft/Arturia_Software_Center_#{version.dots_to_underscores}.pkg"
  name 'Arturia Software Center'
  homepage 'http://www.arturia.com/support/downloads&manuals'
  license :commercial

  pkg "Arturia_Software_Center_#{version.dots_to_underscores}.pkg"
end
