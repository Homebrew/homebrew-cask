cask 'codekit' do
  version '3.0.6-25568'
  sha256 '5819962c8f156d361dd0d1a313f5ccf38824634f895647dc7e7857a8c9a44fb3'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '1e7bebb6e0825dfeca28d0c25926f46bb19f8ad7d0112b2467ad67b8a78e9488'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'
end
