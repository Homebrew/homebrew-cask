cask 'principle' do
  version '5.7'
  sha256 'a92291608dc37dcb2dc005b85b1c9850cdbac82ef87ba7d118cd12a3d84a03c1'

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'https://principleformac.com/'

  depends_on macos: '>= :high_sierra'

  app 'Principle.app'
end
