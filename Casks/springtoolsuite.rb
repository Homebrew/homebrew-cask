cask 'springtoolsuite' do
  version '4.2.1.RELEASE,4.11.0'
  sha256 '67f10e8cf33ac4a67bb2cd9383ecb4b9204ce263e0f46ef2c36bad290368e43a'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast 'https://github.com/spring-projects/sts4/releases.atom'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
