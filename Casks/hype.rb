cask :v1 => 'hype' do
  version '3.0.3-466'
  sha256 '57285045b5742160af8c67e175669027f5ac632cf499e801d0788e36e1ed2b17'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-},'')}.app.zip"
  name 'Hype'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          :sha256 => 'b8435a77bb13d39ddaecb92a1510786ceb135225e207aaaac91e7ef230d9edea'
  homepage 'http://tumult.com/hype/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Tumult'

  app "Hype #{version.to_i}.app"
end
