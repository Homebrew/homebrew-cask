cask "operator" do
  version "1.4.2"
  sha256 "fa96e956c1b2ae82601082ccadcb617a989327e5c7e81f5988a48ef29206e057"

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
