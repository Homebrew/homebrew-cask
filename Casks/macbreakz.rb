cask 'macbreakz' do
  version '5.31'
  sha256 '7ca1bf91ff2c018363f1dd74137077ebdd616beb5aa4d42aa732a64cf6761b8e'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: '54d830fe2ce391de55ed11509459748aae6bb6931ef477a364dce934eab60763'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
