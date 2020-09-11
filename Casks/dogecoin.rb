cask "dogecoin" do
  version "1.14.2"
  sha256 "d8cbb26ceeb5e395417ed5e8984fc3b1d8990f8d5866deb837a4d82a17dba62e"

  # github.com/dogecoin/dogecoin/ was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx.dmg"
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
