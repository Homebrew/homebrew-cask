cask "throne" do
  version "1.0.1"

  on_arm do
    sha256 :no_check
    url "https://github.com/throneproj/Throne/releases/download/#{version}/Throne-#{version}-macos-arm64.zip",
        verified: "github.com/throneproj/Throne/"
  end

  on_intel do
    sha256 :no_check
    url "https://github.com/throneproj/Throne/releases/download/#{version}/Throne-#{version}-macos-amd64.zip",
        verified: "github.com/throneproj/Throne/"
  end

  name "Throne"
  desc "Cross-platform GUI proxy utility (powered by sing-box)"
  homepage "https://github.com/throneproj/Throne"

  app "Throne/Throne.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/Throne",
    "~/Library/Preferences/com.throneproj.throne.plist",
  ]
end
