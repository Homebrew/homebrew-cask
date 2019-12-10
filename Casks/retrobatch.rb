cask 'retrobatch' do
  version '1.3'
  sha256 '97c326a7c5051c8af59f209f1b53e28025744d1fd851ec1299b23e84c4c5e3b5'

  url 'https://flyingmeat.com/download/Retrobatch.zip'
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name 'Retrobatch'
  homepage 'https://flyingmeat.com/retrobatch/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Retrobatch.app'
end
