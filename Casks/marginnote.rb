cask 'marginnote' do
  version '3.6.2002,6'
  sha256 'b2016bee5b2c114571ad7da0f0cbecaf3ded4135a4f3c0840e9aa31e83305b8c'

  # rink.hockeyapp.net/api/2/apps/1451f4f692144d46b91cd5898c7e42cb was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/1451f4f692144d46b91cd5898c7e42cb/app_versions/#{version.after_comma}?format=zip"
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
