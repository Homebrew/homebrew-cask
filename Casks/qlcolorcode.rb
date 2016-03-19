cask 'qlcolorcode' do
  version '2.0.6b4'
  sha256 'c011444fdad4f26858888232fe1ebcc6a0ae98df55f761b699a5886ab053c573'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: '1e184e451d6b7678a4f3d7a11b20d0b09a4ae8dfee52b6396109e2e78f90a81a'
  name 'QLColorCode'
  homepage 'https://github.com/anthonygelibert/QLColorCode'
  license :oss

  depends_on formula: 'highlight'

  qlplugin 'QLColorCode.qlgenerator'

  zap trash: '~/Library/Preferences/org.n8gray.QLColorCode.plist'
end
