cask 'sts' do
  version '3.9.1.RELEASE,4.7.1a'
  sha256 '17bdeecd0b485b02475a2b32f06d61b23450fca14d45acc18a557fc707fb657b'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.before_comma}-e#{version.after_comma}-macosx-cocoa-x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'STS.app'
end
