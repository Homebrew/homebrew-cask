cask 'principle' do
  version '5.2'
  sha256 '1ecd9c186864c96ed3b3f5e8facc1e86489e49d3d6a8b19900527d26af5eb8b4'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
