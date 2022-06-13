cask "operator" do
  version "1.6.0"
  sha256 "3da2ed81d1a0c2cac8ef5ff9d24698a4c4dc0a1986901969e534b8d694b01642"

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
