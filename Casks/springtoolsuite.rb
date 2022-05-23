cask "springtoolsuite" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.14.1,4.23.0"

  if Hardware::CPU.intel?
    sha256 "4f3193cd200e1358af7eee30fdb223f299ddfce3e64b094e4eec505218469286"
  else
    sha256 "6cf556be645ead7beea7648b7cd54314f6df1ff5b6dce0da1327fed599f3c762"
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
