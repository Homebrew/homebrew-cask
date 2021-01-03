cask "operator" do
  version "0.9.9"
  sha256 :no_check

  url "https://download.prelude.org/latest?platform=darwin&variant=zip"
  appcast "https://s3.amazonaws.com/operator.versions/dist/latest-mac.yml"
  name "Operator"
  desc "Prelude Operator is a desktop adversary emulation platform"
  homepage "https://www.prelude.org/"

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
