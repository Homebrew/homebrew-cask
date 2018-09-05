cask 'nord-sample-editor' do
  version '2.28'
  sha256 '659423f4f5b6169d3f7b926158b725ca517e5696a2479380fd1a10993ed10606'

  url "http://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sample-editor/Nord%20Sample%20Editor%20v#{version}.dmg"
  name 'Nord Sample Editor'
  homepage 'http://www.nordkeyboards.com/downloads/software-tools/nord-sample-editor'

  app "Nord Sample Editor v#{version}.app"
end
