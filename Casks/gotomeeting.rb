cask 'gotomeeting' do
  version '8.6.0.7107,ka338000000CjdPAAS'
  sha256 'a731facb69b4c5b5f5bb59365e0765d24849ed9ee9adc114825083f41b8bee4d'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
