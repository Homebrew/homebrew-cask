cask 'mountain-duck' do
  version '1.9.9.7330'
  sha256 '5e1cd826b75c6b2a16a9efc704e5201250e50c33ff13bac4f4da6076af8e32d1'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '480673a2acf4ceafbb395edffa2fb07c70532291d1bcc20a79df15655c35ddab'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
