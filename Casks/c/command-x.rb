cask "command-x" do
  version "1.3.0-1702592806,p419o2i43z0hvk9z2clv3,r6pqrd8fystytsebx060rdy5y"
  sha256 "02d8c6190a17e8ccebc94eb2d59a471d484ecda3875729e1a556633b4ea43cf5"

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
    This variant of #{token} is only updated annually or when security vulnerabilities are discovered.
    For a more frequently updated versio, install via the Mac App Store.
  EOS
end
