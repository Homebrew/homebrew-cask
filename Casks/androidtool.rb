cask 'androidtool' do
  version '1.66'
  sha256 '4f432ad45660071a1f36c4878bd444dd8bedd520c7c70096e5d7a7907ff7c86a'

  url "https://github.com/mortenjust/androidtool-mac/releases/download/#{version}/AndroidTool.zip"
  appcast 'https://github.com/mortenjust/androidtool-mac/releases.atom',
          checkpoint: '7d1026a00e430e46f941f76a7199b56628e939b80977bbc6b6d8e63ea3935809'
  name 'AndroidTool'
  homepage 'https://github.com/mortenjust/androidtool-mac'

  app 'AndroidTool.app'
end
