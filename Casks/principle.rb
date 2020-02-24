cask 'principle' do
  version '5.10'
  sha256 'a05195f26d04611931dc16e20c29db27f67b197c1df116a2cecff4445cfb48c5'

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'https://principleformac.com/'

  depends_on macos: '>= :high_sierra'

  app 'Principle.app'
end
