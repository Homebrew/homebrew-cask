cask 'querious' do
  version '2.0'
  sha256 'df54d729f3b2987d55b9a8d49bbae030c580df975d839dbb273050e2b6d99ab8'

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml',
          checkpoint: 'b595a8a8c22bc3c9e46908a812b56157b0216ed440a318d3fe8ca2efaad245a4'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
