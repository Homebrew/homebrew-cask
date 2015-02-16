cask :v1 => 'data-science-studio' do
  version '1.4.1a'
  sha256 '09d7d5523befae8efc7063024dab34ad227052e55651d264db9e5b6806607650'

  url 'http://downloads.dataiku.com/public/studio/Data%20Science%20Studio%201.4.1a.dmg'
  name 'Data Science Studio'
  homepage 'https://www.dataiku.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Dataiku'

  app 'DataScienceStudio.app'
end
