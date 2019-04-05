cask 'springtoolsuite' do
  version '4.2.0.RELEASE,4.11.0'
  sha256 'f28832e18898b04a07e2fe1bb94d0b3b294459d4cfe743338ac8e641efa272da'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast 'https://github.com/spring-projects/sts4/releases.atom'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
