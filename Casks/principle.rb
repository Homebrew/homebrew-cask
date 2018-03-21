cask 'principle' do
  version '3.7'
  sha256 '2f2a7c56b3c461bf22e4595596e405c74cf2ece48b529b8e1693c6d6e1c05519'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'f8111d5e07f56a4da6c3bb91ae93991777559aab03eba3bb0279faf56b6bf32d'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
