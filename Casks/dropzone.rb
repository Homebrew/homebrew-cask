cask 'dropzone' do
  version '3.6.3'
  sha256 '97c217771313ab85f1bfe9035d62f1572c7e0dbfab3463b027f790ded543d13e'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '2359652041c439eed3e4da25d262b24250984cf6789b1e998427701dace700d5'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"
end
