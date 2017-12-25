cask 'sts' do
  version '3.9.2.RELEASE,4.7.2'
  sha256 '8281a549a9ea334d475525dd79a92f1ea2ffbb3aacaf4dcb6a8e8b740fe128c0'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.before_comma}-e#{version.after_comma}-macosx-cocoa-x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'STS.app'
end
