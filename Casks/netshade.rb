cask 'netshade' do
  version '8.0'
  sha256 '4aeec4f181349bfae4cce8b8ffcc262ede266efb2402612af6fab9e0886f0d4a'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/changelog.php?prod=ns&format=std&warnpay=0'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  app 'NetShade.app'
end
