cask 'principle' do
  version '4.2'
  sha256 '4eafe60ae2aa9be6ccb129c898161bf69e9e2f2673f716ff93410a1b5ebfbbdd'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
