cask 'acorn' do
  version '6.1.2'
  sha256 '0a69736c71f1b46206986cd1ae8aab9e9b732ddeed817648e2accb46bdd37148'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'ef4b645d3cd13bfe689206f40fbc34c69c204e4fb3aeea878f12975abb7d43b7'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
