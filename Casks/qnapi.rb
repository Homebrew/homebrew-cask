cask :v1 => 'qnapi' do
  version '0.1.7'
  sha256 'bab249caa2ca961b97654679094e8dc535f67ea37cdb9a241ae54a20841eae17'

  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'
  license :gpl

  app 'QNapi.app'
end
