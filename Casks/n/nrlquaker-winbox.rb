cask "nrlquaker-winbox" do
  version "3.41.0"
  sha256 "7fda44219199bf30cff987fe4d3a7508c223c3054afa967500ed59d1ca142f06"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
