cask "operator" do
  version "1.2.0"
  sha256 "2b952f8431bced097ca1a3ae96d2175bc60c9d11478c54694b98eb65c15f9ba7"

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
