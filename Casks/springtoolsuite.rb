cask "springtoolsuite" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.15.2,4.24.0"

  if Hardware::CPU.intel?
    sha256 "1ef952d6af0fcbfa107ad08a3d4d247f1878baa0cff1f25a2307e9d1e15d6067"
  else
    sha256 "a05693a40aacb43d7873fddcd5282f4aad1669606d3b667dd802dfc8b6a32233"
  end

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
end
