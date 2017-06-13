cask 'moeditor' do
  version '0.2.0'
  sha256 '5ce5605b0fd3ac360f6bd9c6538ded61bb33da5cd27e3d64810d03b6a5261bd2'

  url "https://github.com/Moeditor/Moeditor/releases/download/v#{version}-beta/Moeditor-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Moeditor/Moeditor/releases.atom',
          checkpoint: '4339da0ee3f2a50193a784fc4a3b2a3977a3d92b96fd07fac15ce2de015cf966'
  name 'Moeditor'
  homepage 'https://github.com/Moeditor/Moeditor'

  app 'Moeditor.app'
end
