cask 'principle' do
  version '3.11'
  sha256 '7791e7e8357781dc5be5f8dfcc296e194d06b8d3d3fbe674918a70f95a3a383a'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
