cask "springtoolsuite" do
  version "4.7.1.RELEASE,4.16.0"
  sha256 "b346ea5fb4755bf1bfb344f364205b94a6a14f3cf57a0e9e6411fb9dc22358a1"

  # download.springsource.com/release/ was verified as official when first introduced to the cask
  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg"
  appcast "https://github.com/spring-projects/sts4/releases.atom"
  name "Spring Tool Suite"
  homepage "https://spring.io/tools"

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
