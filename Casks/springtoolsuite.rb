cask 'springtoolsuite' do
  version '4.1.1.RELEASE,4.10.0'
  sha256 '4eeb65ebf287758e2fb601352b94df7d53d8a5eae1c8519ecaf560dda34c3529'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
