cask 'oclint' do
  version '0.13.1,17.4.0'
  sha256 'c67f014a1ce997e62a242fe9154a9ac0a4ea50ad07b0417f3fb8b13f20e1ab90'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: 'd60b959ae35a0632d8f60e6234e19f425a04d924a31520753bd45643b25a1a6d'
  name 'OCLint'
  homepage 'http://oclint.org/'

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"
  binary "oclint-#{version.before_comma}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version.before_comma}/include/c++", target: "#{HOMEBREW_PREFIX}/include/c++"
end
