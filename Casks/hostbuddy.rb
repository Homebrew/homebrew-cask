cask 'hostbuddy' do
  version '2.0.3,20_4'
  sha256 '151c2fa7370bdc777d3367b93521fd8ce3ab779c749ee688bffacaf1f96e26b9'

  # downloads-clickonideas.netdna-ssl.com/hostbuddy was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=41'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'

  app 'Hostbuddy.app'
end
