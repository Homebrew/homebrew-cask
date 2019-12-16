cask 'seashore' do
  version '2.4.16'
  sha256 'b6bbb1b71176c82fd12f69fcbdc409f4e9f521c4253ccef99279fd7482ab7820'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
