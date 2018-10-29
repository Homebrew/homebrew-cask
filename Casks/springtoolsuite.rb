cask 'springtoolsuite' do
  version '4.0.0.RELEASE,4.9.0'
  sha256 'abed012ac90004fb8e4bb4a423cfbb03ef4ba38fe3c3f926c00a5b351fe85944'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
