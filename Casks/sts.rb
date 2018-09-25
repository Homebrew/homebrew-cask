cask 'sts' do
  version '4.0.0.RELEASE,4.9.0'
  sha256 'abed012ac90004fb8e4bb4a423cfbb03ef4ba38fe3c3f926c00a5b351fe85944'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url 'http://download.springsource.com/release/STS4/4.0.0.RELEASE/dist/e4.9/spring-tool-suite-4-4.0.0.RELEASE-e4.9.0-macosx.cocoa.x86_64.dmg'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'SpringToolSuite4.app'
end
