cask "springtoolsuite" do
  version "4.8.1.RELEASE,4.17.0"
  sha256 "47d6c58b625b84c529a7392199f28af411ce5c869ffc38ef26eb190be4cf1d3f"

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast "https://github.com/spring-projects/sts4/releases.atom"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools"

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
