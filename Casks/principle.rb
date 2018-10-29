cask 'principle' do
  version '4.7'
  sha256 '648199e98c8d7ad689f2cac2a1ce3bb2f87d587b88624262c8d70d2efaf88188'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
