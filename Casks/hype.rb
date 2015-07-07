cask :v1 => 'hype' do
  version :latest
  sha256 :no_check

  url 'https://tumult.com/hype/download/Hype.zip'
  name 'Hype'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          :sha256 => 'b8435a77bb13d39ddaecb92a1510786ceb135225e207aaaac91e7ef230d9edea'
  homepage 'http://tumult.com/hype/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Tumult'

  app 'Hype2.app'
end
