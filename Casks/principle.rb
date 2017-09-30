cask 'principle' do
  version '3.2'
  sha256 'f667d019e9d5d53eedce8644c380959e0679c5ddd45f4dc466a0c401e431a911'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'e3db207a18150b905ae998f78a4aa0675ce46439bf7cfb9b1cd09f6a831cc851'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
