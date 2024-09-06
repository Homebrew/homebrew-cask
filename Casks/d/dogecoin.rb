cask "dogecoin" do
  version "1.14.8"
  sha256 "64fc5477b102950e47345d3acdc16f7df9fa53275075dff3bc4e4ebe32d141bf"

  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-unsigned.dmg",
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

  caveats do
    requires_rosetta
  end
end
