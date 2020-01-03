cask 'retrobatch' do
  version '1.3.1'
  sha256 'f61ec9ecaa29285c828062047597f99c1228eb9725f63c3405b8d95a6b4cfbf7'

  url 'https://flyingmeat.com/download/Retrobatch.zip'
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name 'Retrobatch'
  homepage 'https://flyingmeat.com/retrobatch/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Retrobatch.app'
end
