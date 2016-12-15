cask 'kullo' do
  version '49.0.0'
  sha256 'e0193b6c2871bf09175baef5747d9758fff37aaf5d39869be77e1b95833a2fd2'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  depends_on macos: '>= :mavericks'

  app 'Kullo.app'
end
