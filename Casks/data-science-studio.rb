cask :v1 => 'data-science-studio' do
  version '2.0.0'
  sha256 '97a2e10d14a26d337ba71170ddc5e4ad6e2b3eafe36adcd02048c7da2d402774'

  url "http://downloads.dataiku.com/public/studio/Data%20Science%20Studio%20#{version}.dmg"
  name 'Data Science Studio'
  homepage 'https://www.dataiku.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Dataiku'

  app 'DataScienceStudio.app'
end
