cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.0,4.38.0"
  sha256 arm:   "fffc6f87665531da1c7f1f42de09899ac12067bc081a0ba43378336d09a2f131",
         intel: "d709c2095260f999c17a376388574408f9ef2982b3ef970bb455d209693b09cc"

  url "https://cdn.spring.io/spring-tools/release/dist/#{version.csv.first}.RELEASE/e#{version.csv.second.major_minor}/spring-tools-for-eclipse-#{version.csv.first}.RELEASE-e#{version.csv.second}-macosx.cocoa.#{arch}.dmg"
  name "Spring Tools for Eclipse"
  desc "Next generation tooling for Spring Boot"
  homepage "https://spring.io/tools/"

  livecheck do
    url :homepage
    regex(/
      href=.*?spring-tools-for-eclipse[._-]
      v?(\d+(?:\.\d+)+)[._-]RELEASE[._-]e(\d+(?:\.\d+)+)
      [._-][^"' >]+?[._-]#{arch}\.dmg
    /ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SpringToolsForEclipse.app"

  zap trash: [
    "~/Library/Preferences/org.springframework.boot.ide.branding.sts*.plist",
    "~/Library/Saved Application State/org.springframework.boot.ide.branding.sts*.savedState",
  ]
end
