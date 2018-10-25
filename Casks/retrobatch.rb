cask 'retrobatch' do
  version '1.1'
  sha256 '22da92a29b4ba4e7cecc3e381b1bf3bc1f753b594ea62bcc5dc507892977d552'

  url 'https://flyingmeat.com/download/Retrobatch.zip'
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name 'Retrobatch'
  homepage 'https://flyingmeat.com/retrobatch/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Retrobatch.app'
end
