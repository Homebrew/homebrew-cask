cask 'acorn' do
  version '6.3.1'
  sha256 '8bd173dd9e403205d08f7b5f92db51d9aacc0206f56c5bf3da108f97d761f457'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
