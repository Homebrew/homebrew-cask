cask :v1 => 'knox' do
  version '2.3.1'
  sha256 '93bac0f630bb90452e300d2aaaea38f1fe118f72fe6206377d76ebc691c81555'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d13itkw33a7sus.cloudfront.net/dist/K/Knox-#{version}.zip"
  name 'Knox'
  homepage 'https://agilebits.com/knox'
  license :commercial

  app 'Knox.app'
end
