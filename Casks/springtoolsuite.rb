cask 'springtoolsuite' do
  version '4.6.0.RELEASE,4.15.0'
  sha256 '55b7e316e4c1932a5791302dadd91019e4dffc61f77ed8fc1d02d4d6eb9b80e3'

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast 'https://github.com/spring-projects/sts4/releases.atom'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
