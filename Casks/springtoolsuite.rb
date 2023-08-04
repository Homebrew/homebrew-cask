cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.19.1,4.28.0"
  sha256 arm:   "938930c5dc8296124b1a0e52eef1356cbb78ff4b8c01b231e3d99e978e2a3361",
         intel: "bc8759558c90a0c8c1ae3c407fedad213da613b704fce6a8424df105de14e1e3"

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

  zap trash: [
    "~/Library/Preferences/org.springframework.boot.ide.branding.sts#{version.major}.plist",
    "~/Library/Saved Application State/org.springframework.boot.ide.branding.sts#{version.major}.savedState",
  ]
end
