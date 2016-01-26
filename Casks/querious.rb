cask 'querious' do
  version '1.1.4'
  sha256 'c8553c7a81c777201cd4c155329ae0682edcac2d6fa8e21c2949da7bd7023ad2'

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml',
          checkpoint: 'b595a8a8c22bc3c9e46908a812b56157b0216ed440a318d3fe8ca2efaad245a4'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
