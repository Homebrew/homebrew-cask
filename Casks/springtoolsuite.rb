cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.15.3,4.24.0"
  sha256 arm:   "8ad1d2c34d7c1b9b6854f89fbb65503463d41ce5953dd433a932da08d103e63f",
         intel: "9e69a29355e039ce9a0bb9441a515aabb212ef04131d45e9537710225a026b32"

  url "https://download.springsource.com/release/STS#{version.major}/#{version.csv.first}.RELEASE/dist/e#{version.csv.second.major_minor}/spring-tool-suite-#{version.major}-#{version.csv.first}.RELEASE-e#{version.csv.second}-macosx.cocoa.#{arch}.dmg",
      verified: "download.springsource.com/release/"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/spring-tool-suite-\d+-(\d+(?:\.\d+)+)\.RELEASE-e(\d+(?:\.\d+)+)-macosx\.cocoa\.#{arch}\.dmg}i,
      )
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "SpringToolSuite#{version.major}.app"
end
