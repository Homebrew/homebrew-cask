cask 'dropzone' do
  version '3.5.4'
  sha256 '163f8c912dec520462581f5bdc053c930c72597e1c279397cd14429aec2a92c7'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml',
          checkpoint: 'bcf0cbe0e40b87a1111c8bc0254588ab7ab4c9c4db77db4cf94ee46aa3c1db3e'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :commercial

  app 'Dropzone 3.app'
end
