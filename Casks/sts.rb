cask 'sts' do
  version '3.9.3.RELEASE,4.7.3'
  sha256 '2d70c29226a6b5b22563d6275865e9a95eae827951e921720e92a868167f2ee0'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.before_comma}-e#{version.after_comma}-macosx-cocoa-x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'STS.app'
end
