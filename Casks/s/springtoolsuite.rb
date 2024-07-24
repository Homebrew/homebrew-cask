cask "springtoolsuite" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.24.0,4.32.0"
  sha256 arm:   "d2cb3bdc7cf950d7ecf3b4c89bded23adc3e6e623b35300e3644ef82fdaf96f7",
         intel: "98a54eacffb25e96ec327666fddf96a2582670a1e0bfc57a7c829206e37a3bba"

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
