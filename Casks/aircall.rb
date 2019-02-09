cask 'aircall' do
  version '1.7.2'
  sha256 'd9aa91805d75139ce9d1d7dd3b26a324be723faefec9930830364a17710441f0'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
