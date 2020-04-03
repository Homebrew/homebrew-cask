cask 'ipremoteutility' do
  version '1.8.2'
  sha256 '2c6bdbda882d52484891460f0e84cd5c3b77fa8973e6d15cb6b9c4066bc7b465'

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOSX.zip"
  appcast 'https://flandersscientific.com/ip-remote/'
  name 'Flanders IP Remote Utility'
  homepage 'https://www.flandersscientific.com/ip-remote/'

  app 'IPRemoteUtility.app'
end
