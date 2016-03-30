cask 'qlcolorcode' do
  version '2.0.6'
  sha256 '194c6e27ded07258af945daa3e3347a0b0628ae98cf6d203e509083726ccf58a'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: '0fdfdf4ab501124f84cfce27623a4b5d23e2b5a22c04fc50b74bbf20120ea3ae'
  name 'QLColorCode'
  homepage 'https://github.com/anthonygelibert/QLColorCode'
  license :oss

  depends_on formula: 'highlight'

  qlplugin 'QLColorCode.qlgenerator'

  zap trash: '~/Library/Preferences/org.n8gray.QLColorCode.plist'
end
