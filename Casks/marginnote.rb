cask 'marginnote' do
  version '3.6.2002,7'
  sha256 '02a4140fcb76c6f7069c18170b2580d629bea302200e5b54a0025a5029b00973'

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
