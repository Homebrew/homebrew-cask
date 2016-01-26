cask 'resolutionator' do
  version '1.0.2'
  sha256 '61c5c3d527bc0718b90347bf9a123e00813920ca612a11f755a9281791edd470'

  url 'https://manytricks.com/download/resolutionator'
  appcast 'https://manytricks.com/resolutionator/appcast.xml',
          checkpoint: 'daf1d476cf2235d77b3f0303b5f2672cafff7b713914a50a28d68c6747fece2f'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Resolutionator.app'
end
