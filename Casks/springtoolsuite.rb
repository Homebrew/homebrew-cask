cask "springtoolsuite" do
  version "4.8.0.RELEASE,4.16.0"
  sha256 "9a55e40bd8679d54acae236ac418ba9da3b6b1beec4ce3af5486443c9b8e7468"

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast "https://github.com/spring-projects/sts4/releases.atom"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools"

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
