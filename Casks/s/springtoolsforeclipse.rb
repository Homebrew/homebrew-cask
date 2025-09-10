cask "springtoolsforeclipse" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.32.0,4.37.0"
  sha256 arm:   "ee5764e9a30740082a19a426e5e90544e33576d62d915fb4d81d0bdc0f074028",
         intel: "2703ad27d878f37e7f871c7a47da7ebaec745111c2bc3cda2c6448a7c35c05dd"

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
