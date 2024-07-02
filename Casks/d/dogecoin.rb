cask "dogecoin" do
  version "1.14.7"
  sha256 "cbdd14693e6e4e81d53c034ef05d806495f00d7946c3c1463a5e1550629cf635"

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

  caveats do
    requires_rosetta
  end
end
