cask 'querious' do
  version '2.1.14'
  sha256 '98cbcfd9bc9280b8f7d77e3e525725e2b82abce1d11e248b05ef1a4c4d28263e'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  auto_updates true

  app 'Querious.app'
end
