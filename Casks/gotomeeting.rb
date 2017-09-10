cask 'gotomeeting' do
  version '8.10.0.7495,ka338000000L63XAAS'
  sha256 'ba920089687a1ae78b13560e1a6392f2dd1afbd7a6207e2d51b4f9d3729b44dc'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
