cask :v1 => 'hype' do
  version '3.5.0-518'
  sha256 '66d2df2b982aa4634583381046a7c3bbd93b9fe8e7232663d51fdc8bc52358f3'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-},'')}.app.zip"
  name 'Hype'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          :sha256 => 'b8435a77bb13d39ddaecb92a1510786ceb135225e207aaaac91e7ef230d9edea'
  homepage 'http://tumult.com/hype/'
  license :commercial
  tags :vendor => 'Tumult'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Hype2.app', :target => "Hype #{version.to_i}.app"
end
