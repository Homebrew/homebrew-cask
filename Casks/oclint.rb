cask 'oclint' do
  version '0.13,17.0.0'
  sha256 '03ccf5c21abd705edfb254d037e0452490d8ce3bfb8d638cc2aa8e69e7283658'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: '939775f9b4876d24f3b9b7c897e6680cdc3347fa99ee55b62976d6606cb950d0'
  name 'OCLint'
  homepage 'http://oclint.org/'

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"
  binary "oclint-#{version.before_comma}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version.before_comma}/include/c++", target: "#{HOMEBREW_PREFIX}/include/c++"
end
