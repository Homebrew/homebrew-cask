cask "insomnia@alpha" do
  version "12.3.0-beta.0"
  sha256 "6d085d7a12f9812e8dcdba653e7a6b01d52fd6c3ae99c39d9df6a3a251fd183a"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  # The upstream server only returns a JSON response if the provided version is
  # lower than the newest version. This uses a X.0.0 version in the `url` to
  # work around it but this won't work for a new major version (e.g., 1.0.0)
  # where the provided version and newest version are equal, so this uses the
  # previous major for a new major release.
  livecheck do
    url "https://updates.insomnia.rest/builds/check/mac?v=#{version.include?(".0.0") ? (version.major.to_i - 1) : version.major}.0.0#{"-beta.0" if version.include?("-")}&app=com.insomnia.app&channel=beta"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: "insomnia"
  depends_on macos: ">= :monterey"

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]
end
