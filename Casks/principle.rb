cask 'principle' do
  version '5.9'
  sha256 '16a8262a890874e60593dd22fb3d7aca993eb61ed3379215a3d57e68cf025b9c'

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'https://principleformac.com/'

  depends_on macos: '>= :high_sierra'

  app 'Principle.app'
end
