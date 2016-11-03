cask 'codekit' do
  version '3.0.2-25428'
  sha256 '235f6184ef4015fece17e51b24eb4a74c5a8872cbd31e0820a0612b63eefd0bf'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://codekitapp.com/api/3/appcast.xml',
          checkpoint: 'e24539128c94a2c4558d0eb19252906d873ecc8ef379f86f47103bb84a63a543'
  name 'CodeKit'
  homepage 'https://codekitapp.com'

  auto_updates true

  app 'CodeKit.app'
end
