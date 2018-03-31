cask 'mattermost' do
  version '4.0.1'
  sha256 'c09ccf29aeb56eda53ca037dfde2233d0969c337ccf8f7b0077993e1fc2786d2'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '7c94663f026357847dba6d50e76d68cd4f5dc55f9810e1a4c61548ceab241dea'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
