cask 'kamakiri' do
  version '1.0.9,32'
  sha256 '5634ce3166f0f613490bae043a3ac4376c18f35a6066829f90ebc23b7ec44f4f'

  url "https://mochidev.com/appresources/downloads/Kamakiri%20#{version.before_comma}%20(#{version.after_comma}).zip"
  appcast 'https://mochidev.com/appresources/updates/kamakiridd.xml'
  name 'Kamakiri'
  homepage 'https://mochidev.com/apps/kamakiri/'

  app 'Kamakiri.app'
end
