cask 'principle' do
  version '5.3'
  sha256 'e667d879888bc1c35875c75ce23945710eac75191a1daca76dbfb4c77f902f28'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :high_sierra'

  app 'Principle.app'
end
