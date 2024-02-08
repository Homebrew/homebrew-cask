cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.21.1,4.30.0"
  sha256 arm:   "d82a351a786572b288fb21e264e1a9abc5001a33d6d23996b7253034f83d44da",
         intel: "73fb4b217e63fe3846e4c979fc35e45d96e97f283dbc457e863a11f2d7826736"

  url "https://download.springsource.com/release/STS#{version.major}/#{version.csv.first}.RELEASE/dist/e#{version.csv.second.major_minor}/spring-tool-suite-#{version.major}-#{version.csv.first}.RELEASE-e#{version.csv.second}-macosx.cocoa.#{arch}.dmg",
      verified: "download.springsource.com/release/"
  name "Spring Tool Suite"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools/"

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
