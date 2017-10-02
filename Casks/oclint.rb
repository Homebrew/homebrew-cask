cask 'oclint' do
  version '0.13,16.7.0'
  sha256 '7a8a2645e47d069e17b9239e8a8f7bfee642124337ac5b451bc1ed2accd7da66'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: 'e95e5635fdec4c6c86f8c4a39ea670d387fcb98142df47325bbd049de42dc031'
  name 'OCLint'
  homepage 'http://oclint.org/'

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"
  binary "oclint-#{version.before_comma}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version.before_comma}/include/c++", target: "#{HOMEBREW_PREFIX}/include/c++"
end
