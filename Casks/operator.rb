cask "operator" do
  version "1.7.1"
  sha256 "fa695f41fbd8c613d14901f3942c6f5604143d22ad51563842e8a5058a547cb5"

  url "https://s3.amazonaws.com/operator.versions/release-builds/#{version}/prelude-operator-#{version}-x64.dmg",
      verified: "s3.amazonaws.com/operator.versions/"
  name "Operator"
  desc "Prelude Operator is a desktop adversary emulation platform"
  homepage "https://www.prelude.org/"

  livecheck do
    url "https://s3.amazonaws.com/operator.versions/dist/latest-mac.yml"
    strategy :electron_builder
  end

  app "Operator.app"

  zap trash: [
    "~/Library/Application Support/Operator",
    "~/Library/Caches/com.prelude.operator",
    "~/Library/Caches/com.prelude.operator.ShipIt",
    "~/Library/Logs/Operator",
    "~/Library/Preferences/com.prelude.operator.plist",
    "~/Library/Saved Application State/com.prelude.operator.savedState",
  ]
end
