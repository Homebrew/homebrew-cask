cask 'remembear' do
  version '1.0.0'
  sha256 '57e1f69d588e13dff49b74cf0a51141bffd529ebe6197f0f3f79887546501a61'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml',
          checkpoint: 'c5f3ed3091577767185578f9bd5b6a9b34f54bc2cc129c6148136563de347bad'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
