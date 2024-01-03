cask "stretchly" do
  arch arm: "-arm64"

  version "1.15.1"
  sha256 arm:   "d08038378687ff109d75e4a67ca83cca9b096256d2345986ce40b93e5ee7f805",
         intel: "cdb9e9c186262539aa1acf049491a1a3ccd12e9732245fef94d7f9e282198218"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  depends_on macos: ">= :catalina"

  app "Stretchly.app"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]

  caveats <<~EOS
    This application is not signed. For details see:

    https://github.com/hovancik/stretchly#application-signing
  EOS
end
