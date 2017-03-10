cask 'codekit' do
  version '3.0.7-25701'
  sha256 'e13f0e55548acde16be756f7d41ba4f3f961f0a1d1f52e0d2db4a5dc4aa16463'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '90ed34b30ea563e41654980d999a3084345d46f0a92d232a24322a02d5f4fc7f'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'
end
