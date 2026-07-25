cask "dosbox-x-app" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.07.02"
  sha256 arm:   "26cfa89a1740c95e0ef5e2e441182f56cec097776f3b6ee899866cd298af563c",
         intel: "e0260649f53592f9836f57d86be77215ccede40ec7eff675c9af35b9b460c2dd"

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
