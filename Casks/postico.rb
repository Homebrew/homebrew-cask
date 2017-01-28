cask 'postico' do
  version '1.1'
  sha256 '42980661e881a3f15af787de881dff8f97a69d8ba34a3c0192345a8a6d333280'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
