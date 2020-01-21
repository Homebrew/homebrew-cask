cask 'marginnote' do
  version '3.6.1002,1451f4f692144d46b91cd5898c7e42cb:6'
  sha256 '4132d81bd9b88ea1cbf05385e64431210ea03c8bba152a1a799651264eae4245'

  # rink.hockeyapp.net/api/2/apps was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/#{version.after_comma.before_colon}/app_versions/#{version.after_colon}?format=zip"
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/1451f4f6-9214-4d46-b91c-d5898c7e42cb'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
