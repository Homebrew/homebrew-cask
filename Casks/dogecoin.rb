cask "dogecoin" do
  version "1.14.6"
  sha256 "fc2a8551d90a53636c04dbd9e8b3ae5df409a2548017e90ec29f3d5ecaf86dd2"

  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-signed.dmg",
      verified: "github.com/dogecoin/dogecoin/"
  name "Dogecoin"
  desc "Cryptocurrency"
  homepage "https://dogecoin.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dogecoin-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dogecoin-Qt.app", "0755"
  end

  zap trash: "~/Library/com.dogecoin.Dogecoin-Qt.plist"
end
