cask 'postico' do
  version '1.0.10'
  sha256 'c746450e6decef04ab8ee193dd69524c951743718ca38bdaedef6c6f149c7300'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
