cask "dosbox-x-app" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.01.02,20260102233440"
  sha256 arm:   "5cd70957c63512e53fe7445c3d86b5cb6e6b842a9642c936cad27f41731fea8d",
         intel: "33378197130c8823332da466bec320f126bc906db7d3d7e1db86aa25c0c85493"

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
