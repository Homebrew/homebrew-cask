cask 'oclint' do
  version '0.11.1,16.3.0'
  sha256 'fd2a0ca67392ca14a57b9f2bebbcaecd7406b3266fe5c95a691d96e77c073054'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: '9a9cf7180ee21e139ccaac56b9c80845866632e625ea2a735ff782e9f3972369'
  name 'OCLint'
  homepage 'http://oclint.org/'

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: '/usr/local/lib/oclint'
  binary "oclint-#{version.before_comma}/include/c++", target: '/usr/local/include/c++'
end
