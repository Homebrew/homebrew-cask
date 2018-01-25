cask 'iannix' do
  version '0.9.20'
  sha256 '094ea79552b15589a9190a7105796cd80cd610fb624aa756d1ed7fcfda2498b1'

  url "https://www.iannix.org/download/iannix_mac_64__#{version.dots_to_underscores}.dmg"
  name 'IanniX'
  homepage 'https://www.iannix.org/'

  app 'IanniX.app'
end
