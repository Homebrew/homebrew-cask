cask 'springtoolsuite' do
  version '4.7.0.RELEASE,4.15.0'
  sha256 '89ae978f7e1f486a5777ea910d15ab6c78090006ad8ec0f215c5bdfbb5094791'

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast 'https://github.com/spring-projects/sts4/releases.atom'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
