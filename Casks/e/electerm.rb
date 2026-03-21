cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "2.17.8"
  sha256 arm:   "82508b02ce4e747631479984d35260b0b8140be3bf6ac3431bc172eefa697c61",
         intel: "622eb41c2c4f2e0e9a132254aff0839d7dd6f8659e4be61589f7bbe13c5f902f"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg",
      verified: "github.com/electerm/electerm/"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://electerm.html5beta.com/"

  livecheck do
    url "https://electerm.html5beta.com/data/electerm-github-release.json"
    strategy :json do |json|
      json.dig("release", "tag_name")&.sub("v", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
