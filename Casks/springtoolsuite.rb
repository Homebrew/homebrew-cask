cask 'springtoolsuite' do
  version '4.4.1.RELEASE,4.13.0'
  sha256 '87e7bf2abd89620f810c00c3ffa6f667ae5f471e285b3b5da766ff30a0aab808'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast 'https://github.com/spring-projects/sts4/releases.atom'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
