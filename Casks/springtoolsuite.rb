cask "springtoolsuite" do
  version "4.9.0.RELEASE,4.18.0"
  sha256 "56e14f18bfc6eca84403326db3465abd4ca91ae64d21754e3700639cbcf2320c"

  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}-e#{version.after_comma}-macosx.cocoa.x86_64.dmg",
      verified: "download.springsource.com/release/"
  appcast "https://github.com/spring-projects/sts4/releases.atom"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools"

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
