cask 'querious' do
  version '2.0'
  sha256 '56c6dd86739da8c21338832e26ae6f1b68507f458d147ea8da7a7f3a42bb11a2'

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml',
          checkpoint: 'b595a8a8c22bc3c9e46908a812b56157b0216ed440a318d3fe8ca2efaad245a4'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
