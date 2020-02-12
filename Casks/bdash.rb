cask 'bdash' do
  version '1.7.0'
  sha256 '144e02b4f7c0ad59fc9d92ceb0bab77cd895171aa3f7e5252afc368cabf439d4'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
