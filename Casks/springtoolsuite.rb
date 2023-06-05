cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.18.1,4.27.0"
  sha256 arm:   "d8dbfbf90ba69f1eed5ea49e4b7d1b183d10c7d7facf05ff0af437a66b526c56",
         intel: "51336592d7ce8540009b04def10e6357c1a1b29e2e76ee5b850f2a590ccf2ce7"

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
