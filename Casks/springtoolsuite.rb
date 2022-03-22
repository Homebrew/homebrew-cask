cask "springtoolsuite" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.14.0,4.23.0"

  if Hardware::CPU.intel?
    sha256 "973b0b6a332e60649bf2b989f0b2f7f8986f9138641e4cfa11e7ff276a2cc598"
  else
    sha256 "c3d1d80669382688d49b2fc6d06b1f54e30fac0371d020ca07dbdf52472b69d0"
  end

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
