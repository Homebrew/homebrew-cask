cask 'androidtool' do
  version '1.66'
  sha256 '4f432ad45660071a1f36c4878bd444dd8bedd520c7c70096e5d7a7907ff7c86a'

  url "https://github.com/mortenjust/androidtool-mac/releases/download/#{version}/AndroidTool.zip"
  appcast 'https://github.com/mortenjust/androidtool-mac/releases.atom',
          checkpoint: '2752aeeb1eb0b820af31f62beb838089fb0299bff005119d2103d318e4e3d580'
  name 'AndroidTool'
  homepage 'https://github.com/mortenjust/androidtool-mac'

  app 'AndroidTool.app'
end
