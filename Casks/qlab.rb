cask 'qlab' do
  version '4.0.10'
  sha256 '11c57c7f69f4aee6e9f2ba4c3f6c6e807864469d82178950e53ae98ed54d237b'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: 'b8a7ad331728378a0f6aa7f87d7bae8fc3949a39d3ec4e88e1984bbda24a81b9'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
