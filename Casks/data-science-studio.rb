cask :v1 => 'data-science-studio' do
  version '1.4.2'
  sha256 'f7849625ac4bd47c7cf5624e30ee33cee99941beee695af4002f74d888aa36b8'

  url 'http://downloads.dataiku.com/public/studio/Data%20Science%20Studio%201.4.2.dmg'
  name 'Data Science Studio'
  homepage 'https://www.dataiku.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Dataiku'

  app 'DataScienceStudio.app'
end
