cask 'querious' do
  version '2.0_rc1'
  sha256 '082482ee568dcd4790ca0ad6cd40a1e1eee5522a382ef14a94d48b23a5dc6bf0'

  # arweb-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://arweb-assets.s3.amazonaws.com/downloads/querious/Querious.dmg'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: '5e457e6c97b929e0161b02a9a7708efbae2b4aa04c90a8d2257f6ff050b82737'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
