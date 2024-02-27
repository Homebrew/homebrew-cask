cask "sdm" do
  version "21.56.0,4846F995E6068F7FCAAFDF509FB2BB844563133E"
  sha256 "b887f682414eb3da6c715d0b8c89656e20ba94aa4b18a68e1b6885eb12e9cc3f"

  url "https://downloads.strongdm.com/builds/desktop/#{version.csv.first}/darwin/universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip"
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
