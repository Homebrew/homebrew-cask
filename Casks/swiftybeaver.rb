cask 'swiftybeaver' do
  version '1.1.0'
  sha256 '1a12cf1061aac8cb455ebce2898b8165f89c5016b3befdbbe71ebbcef6680f0a'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '565d43c26994964606e69037232c1b30e492e08ae871f3bb5cf576bb7736dd56'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'

  app 'SwiftyBeaver.app'
end
