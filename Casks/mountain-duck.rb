cask 'mountain-duck' do
  version '1.8.0.6480'
  sha256 '6f073745f3d9e4faca9a94e8f83edccd6578d57783fba77ba87f26e4ad91be83'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'e22e5466c30d24bf26e418f27149295f64a857b7a39ff2513974e188a7ae04c6'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
