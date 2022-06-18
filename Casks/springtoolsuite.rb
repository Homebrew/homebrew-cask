cask "springtoolsuite" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.15.1,4.24.0"

  if Hardware::CPU.intel?
    sha256 "1a00f9e0373b3b65c4c1ee800566153f93a18043f5cd9f61d040651647aeff82"
  else
    sha256 "0774306556b87efed28e69292b1b90714d3a4d28db4a4b28148e336655fbec0f"
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
