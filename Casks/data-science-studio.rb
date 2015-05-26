cask :v1 => 'data-science-studio' do
  version '1.4.4'
  sha256 'bea67d377bc4df2ac109bda21b3e15dd0ca84b7c56a57836a73502476b5df5fb'

  url "http://downloads.dataiku.com/public/studio/Data%20Science%20Studio%20#{version}.dmg"
  name 'Data Science Studio'
  homepage 'https://www.dataiku.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Dataiku'

  app 'DataScienceStudio.app'
end
