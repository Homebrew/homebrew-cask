cask :v1 => 'knox' do
  version '2.3.2'
  sha256 '35379e9af57d39ed0fcc965d295e1509f32300044379ab3c686b762fe1eac915'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d13itkw33a7sus.cloudfront.net/dist/K/Knox-#{version}.zip"
  name 'Knox'
  homepage 'https://agilebits.com/knox'
  license :commercial

  app 'Knox.app'
end
