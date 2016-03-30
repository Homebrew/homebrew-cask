cask 'dropzone' do
  version '3.5.4'
  sha256 '163f8c912dec520462581f5bdc053c930c72597e1c279397cd14429aec2a92c7'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml',
          checkpoint: '3369ac9be8ca4bcea11a1827b776eb3da857ee7666b45cac40ede350ba95d006'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :commercial

  app "Dropzone #{version.major}.app"
end
