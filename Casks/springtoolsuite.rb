cask "springtoolsuite" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.15.0,4.24.0"

  if Hardware::CPU.intel?
    sha256 "bdad62e75a12c31f1395b0fd654a44457e2f61354b33b5990d846d4e783be813"
  else
    sha256 "43c32ba441500073c5f132ca8472adcdb421b829c1b0599555111eebda4ac789"
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
