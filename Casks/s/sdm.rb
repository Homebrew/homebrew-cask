cask "sdm" do
  version "21.73.0,AF3766BF30B041AA98F6BE2D840663AD3CD7BFD7"
  sha256 "307ae0690a89ad907ca9e3b9f520e8712fac74546bbf2a8df51192ee8d0e7daa"

  url "https://downloads.strongdm.com/builds/desktop/#{version.csv.first}/darwin-universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip"
  name "sdm"
  desc "StrongDM client"
  homepage "https://www.strongdm.com/"

  livecheck do
    url "https://app.strongdm.com/releases/desktop/darwin/0.0.0"
    regex(%r{https:.*?/(\h+)/SDM[._-]v?(\d+(?:\.\d+)+)\.universal\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "SDM.app"
  binary "#{appdir}/SDM.app/Contents/Resources/sdm.darwin", target: "sdm"

  uninstall delete: "#{appdir}/SDM.app/Contents/Resources/sdm-socket"

  zap trash: [
    "/usr/local/bin/sdm",
    "~/.sdm",
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm*",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
  ]
end
