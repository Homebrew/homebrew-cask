cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.0,4.40.0"
  sha256 arm:   "9de0b79eb884caf5d9b8a1ca20892c94350ec091a53cae53641ff522bc7f3c4f",
         intel: "a622306e78121fdb90563e0e88f59e467a0457a6f87fbefc154035c26e1ae5b5"

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
  depends_on macos: :big_sur

  app "SpringToolsForEclipse.app"

  zap trash: [
    "~/Library/Preferences/org.springframework.boot.ide.branding.sts*.plist",
    "~/Library/Saved Application State/org.springframework.boot.ide.branding.sts*.savedState",
  ]
end
