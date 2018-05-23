cask 'principle' do
  version '3.9'
  sha256 'b765259686fa41c46ce38544be91ff64a47b8c244cbd32740b37c67ec9702c02'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'a93a838b33e9f3175f893dc6dcff84066d1e354860aa1c537e63cf0117a8db51'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
