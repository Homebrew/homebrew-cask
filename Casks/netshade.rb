cask 'netshade' do
  version '7.2.1'
  sha256 '9a447695be84e1f2929bb2526ffc2e1fe05e23c2c74a739617e134ece52042ce'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/changelog.php?prod=ns&format=std&warnpay=0'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  app 'NetShade.app'
end
