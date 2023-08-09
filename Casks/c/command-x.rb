cask "command-x" do
  version "1.0.6,1684086547"
  sha256 "48601491924bf431c6cf9a9bb5e619e5e60b6212521b9385e55fdb1db729217c"

  url "https://dsc.cloud/sindresorhus/Command-X-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "dsc.cloud/sindresorhus/"
  name "Command X"
  desc "Cut and paste files in Finder"
  homepage "https://sindresorhus.com/command-x"

  livecheck do
    url :homepage
    regex(/href.*?Command[._-]X[._-](\d+(?:\.\d+)+)-(\w+)\.zip"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :ventura"

  app "Command X.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Command-X",
    "~/Library/Containers/com.sindresorhus.Command-X",
  ]
end
