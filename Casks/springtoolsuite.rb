cask "springtoolsuite" do
  version "4.7.2.RELEASE,4.16.0"
  sha256 "f6e2d641c913d331318b7d062a356f3544374a0e12b40ba9027ab04b41ee69cb"

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast "https://github.com/spring-projects/sts4/releases.atom"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools"

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
