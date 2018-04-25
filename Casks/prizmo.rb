cask 'prizmo' do
  version '3.5'
  sha256 '146703a2fa149ca7e79e3bec083b7dbdaeedd510dc86751308e3e18345c10d16'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml",
          checkpoint: '62556f7ad6a75443c608c17f1e8adf29513335f3c62c251824b4d4c1cc5b7770'
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
