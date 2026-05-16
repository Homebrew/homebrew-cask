cask "dosbox-x-app" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.05.02"
  sha256 arm:   "e15b2b31897647bb1ff0e908c740acbc00249d64d1304a15658f683bec1dbc44",
         intel: "da411bb31c2c7954876302104aebd1ed635b6cfe3ffad160cb5dfcfab86d6a0d"

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second || version.csv.first}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/dosbox-x-macosx?-#{arch}[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        (match[0] == match[1]) ? match[0] : "#{match[0]},#{match[1]}"
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
