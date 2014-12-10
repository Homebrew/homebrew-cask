cask :v1 => 'knox' do
  version '2.2.0'
  sha256 'c19c56a35d299a2cd85c612e1e99009bff9d7536ddd24f9d565910702be9742a'

  url "https://d13itkw33a7sus.cloudfront.net/dist/K/Knox-#{version}.zip"
  homepage 'https://agilebits.com/knox'
  license :unknown    # todo: improve this machine-generated value

  app 'Knox.app'
end
