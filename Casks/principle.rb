cask 'principle' do
  version '3.6'
  sha256 '0cc3fa7635b3a7bdbadf6a2349bf45ab78bde5b8554c5aa1ddd49cbecbb5eb8c'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'e9153520f388d312b4eb6af72c6be70b53d90d57582cb6e8f7de234a35207238'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
