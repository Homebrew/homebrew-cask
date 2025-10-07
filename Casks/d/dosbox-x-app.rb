cask "dosbox-x-app" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.10.07,20251007154914"
  sha256 arm:   "54d12fbd025819712f78fa91724576b2fffdc1538aeb5b73087a1ca2d6ca0c49",
         intel: "c172e955a5ef540693680f7cd422823e459ca5e5dc21599707fc700a8141ab9e"

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url :url
    regex(%r{/dosbox-x-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
