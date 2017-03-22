cask 'codekit' do
  version '3.0.8-25704'
  sha256 '177a3fed43bba492a2085f3412a075b7798d0a8f98d67006f4d4f558a78c1730'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '1a06e05557638497c77291e6d2045daf62822942ac3eb560776bee21f61495c8'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'
end
