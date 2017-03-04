cask 'moeditor' do
  version '0.2.0'
  sha256 '5ce5605b0fd3ac360f6bd9c6538ded61bb33da5cd27e3d64810d03b6a5261bd2'

  url "https://github.com/Moeditor/Moeditor/releases/download/v#{version}-beta/Moeditor-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Moeditor/Moeditor/releases.atom',
          checkpoint: '24cdfe7506739ad20f9f5dd1f25c29504ca1b09fa2a7112f2e8405f57208f481'
  name 'Moeditor'
  homepage 'https://github.com/Moeditor/Moeditor'

  app 'Moeditor.app'
end
