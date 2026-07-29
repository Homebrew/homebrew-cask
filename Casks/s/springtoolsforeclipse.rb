cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.0,4.40.0"
  sha256 arm:   "92626d4f7f517cf2e8805d87952b5129c7ac2233599353c10c903d60e80f321e",
         intel: "b38bbeecbc657d9a3182c26aacea13f9e752c433fbc30c9aae4d5b74ec860f0b"

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
