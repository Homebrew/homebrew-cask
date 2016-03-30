cask 'mountain-duck' do
  version '1.2.2.3623'
  sha256 'fd78fdb3035450303d20b09244c694fe7c927e26401f24380b013b7389e9510b'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'f091cee0b05b1a1e40092f762d033fbd56ba4665c1979ce1bdb9293b9e596972'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
