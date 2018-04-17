cask 'netshade' do
  version '7.1'
  sha256 '41f16822c9edc21c09408813fd4fcedd553f6860a446671c34d3d1826821bbff'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/changelog.php?prod=ns&format=std&warnpay=0',
          checkpoint: 'e0c0979370c8b479f864f8887a2bde3ef898ec013ca5a8207bdb1077ad1960b7'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  app 'NetShade.app'
end
