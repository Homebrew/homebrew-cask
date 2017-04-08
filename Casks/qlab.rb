cask 'qlab' do
  version '4.0'
  sha256 'ea36f0df90934ebf6cd6f9f34286304d27a7b727f7e26aa8365fc807afe78466'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: '10cc503ea8aaf0c37b367ca299f6a3bd84553656ba4d69cc3a89813b45c8490a'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
