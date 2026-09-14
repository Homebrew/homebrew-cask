cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.0,4.41.0"
  sha256 arm:   "4be8795b7ef568d05b817691290b6433730ba88be0faf7d426bc1e51a7ef5c00",
         intel: "d5e38267445cfd02d6f52aaa2239fd90be46450983a48b55bc19a8653b3afa5b"

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
  depends_on :macos

  app "SpringToolsForEclipse.app"

  zap trash: [
    "~/Library/Preferences/org.springframework.boot.ide.branding.sts*.plist",
    "~/Library/Saved Application State/org.springframework.boot.ide.branding.sts*.savedState",
  ]
end
