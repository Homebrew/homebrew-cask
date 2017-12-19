cask 'manuscripts' do
  version '1.2.9-71-GAF2A6,205'
  sha256 '04ecd87ab1f4a1a7a1ce8aa6ede9dcb3c9b44430702a977cc4e038a62f43cdc5'

  # hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4',
          checkpoint: '808b92eecdef01db7bf3748ecbae2bdccd80ff50f73d08a57bcc6a85b73a7af2'
  name 'Manuscripts'
  homepage 'https://www.manuscriptsapp.com/'

  app 'Manuscripts.app'
end
