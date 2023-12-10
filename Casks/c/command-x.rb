cask "command-x" do
  version "1.0.6-1684086547-1701611235,yubkc4dmr2xy89ja4r4hr,xa0zqmllf0uwrm55latddna99"
  sha256 "48601491924bf431c6cf9a9bb5e619e5e60b6212521b9385e55fdb1db729217c"

  url "https://www.dropbox.com/scl/fi/#{version.csv.second}/Command-X-#{version.major_minor_patch}.zip?rlkey=#{version.csv.third}&raw=1",
      verified: "dropbox.com/scl/fi/"
  name "Command X"
  desc "Cut and paste files in Finder"
  homepage "https://sindresorhus.com/command-x"

  livecheck do
    url :homepage
    regex(%r{href.*?/scl/fi/(\w+)/Command-X-([\d.-]+)\.zip\?rlkey=(\w+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]},#{match[2]}" }
    end
  end

  depends_on macos: ">= :ventura"

  app "Command X.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Command-X",
    "~/Library/Containers/com.sindresorhus.Command-X",
  ]

  caveats <<~EOS
    This package is the non-App Store Version and claimed to be updated only once a year.

    Use the App Store version whenever possible:

      https://apps.apple.com/app/id6448461551
  EOS
end
