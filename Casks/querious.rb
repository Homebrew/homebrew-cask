cask 'querious' do
  version '2.0_beta45'
  sha256 '1b47da63c835e48a2d7b10bca0811cd3f7aad01f738057ba977226048281bcd5'

  url "https://store.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: '0cc75e58d3d5232065e87f075f69ea3904d01427a4088d0bcdfa3b60bded0246'
  name 'Querious 2'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
