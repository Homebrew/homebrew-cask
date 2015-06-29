cask :v1 => 'gephi' do
  version '0.8.2-beta'
  sha256 'ee8f7845ade6109de7e88ed03cc92885c6d936c34d666503d7c92bf3c5d0659d'

  # launchpadlibrarian.net is the official download host per the vendor homepage
  url "https://launchpadlibrarian.net/127456772/gephi-#{version}.dmg"
  name 'Gephi'
  homepage 'https://gephi.github.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Gephi.app'
end
