cask 'codekit' do
  version '3.0.5-25504'
  sha256 'fe2735391538748f517943597ed263a399646ed8b102bd9f90e1cfc590895a0f'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '301ee79486cd2b51c91573ac050df2a4188fc889ec54c87af56b24c36fdfa21e'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'
end
