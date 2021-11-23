cask "operator" do
  version "1.3.2"
  sha256 "a845adb0d07e6d6fd5892ee9249161a7c3b0aba615a33e61334023af9676ace1"

  url "https://s3.amazonaws.com/operator.versions/release-builds/#{version}/Operator-#{version}-mac.zip",
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
