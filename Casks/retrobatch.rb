cask 'retrobatch' do
  version '1.3'
  sha256 '55565c9c452ce3d96b63543243d12d60d0f55b60b19df9fb6958013f2e5f754b'

  url 'https://flyingmeat.com/download/Retrobatch.zip'
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name 'Retrobatch'
  homepage 'https://flyingmeat.com/retrobatch/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Retrobatch.app'
end
