cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.17.1,4.26.0"
  sha256 arm:   "52fb810ce4bba0eeac48c114b78d03b8a19f7c23dc9ba2183a59f41b43f50dd6",
         intel: "954b5db73b336e0037a6a5f17eb2d039e06f05064d9a1999904824cab93bd6c2"

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
