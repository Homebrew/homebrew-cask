cask 'knox' do
  version '2.3.2'
  sha256 '35379e9af57d39ed0fcc965d295e1509f32300044379ab3c686b762fe1eac915'

  # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
  url "https://d13itkw33a7sus.cloudfront.net/dist/K/Knox-#{version}.zip"
  name 'Knox'
  homepage 'https://agilebits.com/'

  app 'Knox.app'

  zap trash: [
               '~/Library/Caches/com.knoxformac.knox',
               '~/Library/Preferences/com.knoxformac.knox.plist',
             ]
end
