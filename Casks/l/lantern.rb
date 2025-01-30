cask "lantern" do
  version "8.0.0"
  sha256 "5ad26312c7b54438675b9a5bcdfcab49213bee6744476a03f0c4fb1e367a75b5"

  url "https://github.com/getlantern/lantern-binaries/raw/main/lantern-installer-#{version}.dmg",
      verified: "github.com/getlantern/lantern-binaries/"
  name "Lantern"
  desc "Open Internet For All"
  homepage "https://lantern.io/"

  livecheck do
    url "https://github.com/getlantern/lantern-binaries"
    regex(/href=.*?lantern[._-]installer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  app "Lantern.app"

  uninstall launchctl: "org.getlantern",
            quit:      "com.getlantern.lantern"

  zap trash: [
    "~/Library/Application Support/byteexec/lantern",
    "~/Library/Application Support/byteexec/sysproxy-cmd",
    "~/Library/Application Support/Lantern",
    "~/Library/Logs/Lantern",
  ]
end
