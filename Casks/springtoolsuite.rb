cask 'springtoolsuite' do
  version '4.6.1.RELEASE,4.15.0'
  sha256 '40d60284b57c02c639737dedc47122db1603f770144b973e3b39003ecfaa9ca0'

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast 'https://github.com/spring-projects/sts4/releases.atom'
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools'

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
