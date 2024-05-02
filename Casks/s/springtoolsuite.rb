cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.22.1,4.31.0"
  sha256 arm:   "f56d3a881daf9a932e5d12dc615d7f9d2ebab888fd1226d74fe1b6e6189095db",
         intel: "f402e4555f66f7bb55bf22d60a970f35793cf98af1b6a1988aa2b67f5f7d68ad"

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
