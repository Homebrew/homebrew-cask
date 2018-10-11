cask 'principle' do
  version '4.6'
  sha256 '649814f82d07e82698961e050d3d900fe867f359b4edaa63f5c8bcee413ab17f'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'http://principleformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Principle.app'
end
