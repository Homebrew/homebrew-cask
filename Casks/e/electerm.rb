cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "2.1.26"
  sha256 arm:   "cc2bb2d46e7787d0535de466f6df62fa04fd5208db44b3e618acf0d7258dbf5a",
         intel: "6498caf21a83825dce561bbf6d6f3d7019b264e23d3295dbf8970920d5470a6f"

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

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
