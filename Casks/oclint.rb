cask 'oclint' do
  version '0.12,16.5.0'
  sha256 '12fda8c59ddd1896880a3055b701850d89550ea686b8d82aa94fffb74220950d'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: '4f8feba9928bb7318c46a3b7d4eeb798f7b6b30cbdfa7bfe86c13eff09790757'
  name 'OCLint'
  homepage 'http://oclint.org/'

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: '/usr/local/lib/oclint'
  binary "oclint-#{version.before_comma}/include/c++", target: '/usr/local/include/c++'
end
