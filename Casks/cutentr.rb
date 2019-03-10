cask 'cutentr' do
  version '0.3.2'
  sha256 '4a418c7e7a8baad9c64b6ec9730421b9a5411e1c8e2183d610fc9a3e6e634e8c'

  url "https://github.com/EBLeifEricson/cuteNTR-OSX/releases/download/#{version}/cuteNTR-#{version}.dmg"
  appcast 'https://github.com/EBLeifEricson/cuteNTR-OSX/releases.atom'
  name 'cuteNTR'
  homepage 'https://github.com/EBLeifEricson/cuteNTR-OSX'

  app 'cuteNTR.app'
end
