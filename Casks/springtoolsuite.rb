cask "springtoolsuite" do
  version "4.11.0,4.20.0"
  sha256 "7cf106454cc6cf884a9645ae2537657d41cc9c83317c751aa9b9bbbfe6fc0f32"

  url "https://download.springsource.com/release/STS#{version.major}/#{version.before_comma}.RELEASE/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.major}-#{version.before_comma}.RELEASE-e#{version.after_comma}-macosx.cocoa.x86_64.dmg",
      verified: "download.springsource.com/release/"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/spring-tool-suite-\d+-(\d+(?:\.\d+)*)\.RELEASE-e(\d+(?:\.\d+)*)-macosx\.cocoa\.x86_64\.dmg}i,
      )
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
