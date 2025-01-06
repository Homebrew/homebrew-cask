cask "sage-wallet" do
  version "0.9.1"
  sha256 "987168893c597ac031d2fd96dc067ab5e60c824dd85b4aa970521c2f3532402e"

  url "https://github.com/xch-dev/sage/releases/download/v#{version}/Sage_#{version}_universal.dmg", verified: "github.com/xch-dev/sage/"
  name "sage-wallet"
  desc "Sagest wallet for the Chia blockchain"
  homepage "https://sagewallet.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Sage.app"

  zap trash: "~/Library/WebKit/com.rigidnetwork.sage"
end
