cask "springtoolsuite" do
  version "4.12.0,4.21.0"
  sha256 "7b9ae67a6cd45a35bd352dabf0bec9207dc5d75f82be12ad6ea1efa6d65279fe"

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
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
