cask 'codekit' do
  version '3.0.3-25444'
  sha256 '6b8e5980cb56fc31d320854b38215794c204541ed9cb787757316bae0bd99698'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '64dff7566f12ddacd9a5d6b7c669b63f0c09c4b2c1e7e48678c7a914bfe883f3'
  name 'CodeKit'
  homepage 'https://codekitapp.com'

  auto_updates true

  app 'CodeKit.app'
end
