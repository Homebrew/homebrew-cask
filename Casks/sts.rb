cask 'sts' do
  version '3.9.4.RELEASE,4.8.0'
  sha256 'c843372101b20a741470b8c5aca14dd824f4b8b4eba036807b0dfad6e10faaa9'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.before_comma}-e#{version.after_comma}-macosx-cocoa-x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'STS.app'
end
