cask "bettbox" do
  version "1.18.5"

  on_arm do
    sha256 "cc702403586a1260dada41cd11a44455d795e0cd2e782eae0f3542757d5cada9"

    url "https://github.com/appshubcc/Bettbox/releases/download/v#{version}/Bettbox-#{version}-macos-arm64.dmg"
  end
  on_intel do
    if MacOS.version <= :big_sur
      sha256 "a8828fd8dc1e050e114542b81172aa932c1a34fa82534f2ac72126347dee1413"

      url "https://github.com/appshubcc/Bettbox/releases/download/v#{version}/Bettbox-#{version}-macos-amd64-compatible.dmg"
    else
      sha256 "ffefdd47f7ac339e3277291d233d39a27155cff75b6fb75f25618e9683bd71e2"

      url "https://github.com/appshubcc/Bettbox/releases/download/v#{version}/Bettbox-#{version}-macos-amd64.dmg"
    end
  end

  name "Bettbox"
  desc "Multi-platform network debugging and traffic splitting client"
  homepage "https://github.com/appshubcc/Bettbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bettbox.app"

  zap trash: [
    "~/Library/Application Support/Bettbox",
    "~/Library/Preferences/com.appshub.bettbox.plist",
    "~/Library/Saved Application State/com.appshub.bettbox.savedState",
  ]
end
