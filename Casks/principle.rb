cask 'principle' do
  version '3.10'
  sha256 '79bc04d09a02d4232473cb3c71ac47375d253c8810840f4193253342e0fe5a2c'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
