cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,4.35.0"
  sha256 arm:   "a215a8b3a81c51dd5646c3a42d88ef5ee637ef971591a24f7180437b7a0613ce",
         intel: "fe129eeceb59d13c244b5946af7ce54c7e0e1da13712e45bcbc8792737cf9eee"

  url "https://cdn.spring.io/spring-tools/release/STS#{version.major}/#{version.csv.first}.RELEASE/dist/e#{version.csv.second.major_minor}/spring-tools-for-eclipse-#{version.csv.first}.RELEASE-e#{version.csv.second}-macosx.cocoa.#{arch}.dmg"
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

  app "SpringToolsForEclipse.app"

  zap trash: [
    "~/Library/Preferences/org.springframework.boot.ide.branding.sts*.plist",
    "~/Library/Saved Application State/org.springframework.boot.ide.branding.sts*.savedState",
  ]
end
