cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.0,4.39.0"
  sha256 arm:   "6728b41da1cf0049c172be8f6bc8a09255b8c20b22851844dbc43a1165ef8b2a",
         intel: "8b08bc1b4c151521b75c137a6c3d069e6539bdeee113f68b2cf8f30df7e9afde"

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
