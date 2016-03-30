cask 'querious' do
  version '2.0'
  sha256 '6bef8a50518771128724cdb181af2f59f66cfdc714f121f06bd32ee6c179c206'

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml',
          checkpoint: 'b595a8a8c22bc3c9e46908a812b56157b0216ed440a318d3fe8ca2efaad245a4'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
