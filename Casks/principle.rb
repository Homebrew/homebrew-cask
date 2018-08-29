cask 'principle' do
  version '4.1'
  sha256 '783ae69dfcaeca83314b7ed40ba8ea501aee758021107e41780cb0cba529d4d0'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
