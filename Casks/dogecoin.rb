cask "dogecoin" do
  version "1.14.3"
  sha256 "fe1acb1b81a12f1eadaa2666b348e35fe770e8b1254aede8db766d93ffd382d5"

  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx.dmg",
      verified: "github.com/dogecoin/dogecoin/"
  appcast "https://github.com/dogecoin/dogecoin/releases.atom"
  name "Dogecoin"
  desc "Cryptocurrency"
  homepage "https://dogecoin.com/"

  app "Dogecoin-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dogecoin-Qt.app", "0755"
  end

  zap trash: "~/Library/com.dogecoin.Dogecoin-Qt.plist"
end
