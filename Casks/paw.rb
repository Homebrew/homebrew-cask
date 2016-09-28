cask 'paw' do
  version '3.0.11'
  sha256 'a0c4037cfacab81a780e69c16f496ff4e1a1b378b375e20ff56b90aca149d7d2'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version}-#{version.major}00#{version.minor}0#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '956f65a45998969c17ed3a230e6f5f937c033387d35f78a19616645515f5740f'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
