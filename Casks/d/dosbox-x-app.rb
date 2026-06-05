cask "dosbox-x-app" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.06.02"
  sha256 arm:   "378827eeb80c646c99837ec4f9f03c7f7f8b936b08f6575b3768133b3e90aca4",
         intel: "5e7163daf3ee425c5a4d2e067e8de31adb02449d5cdf8a511fe0fd919f01fd0c"

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
