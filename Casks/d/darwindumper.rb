cask "darwindumper" do
  version "3.1.1"
  sha256 "b840162363ec8d1b505a158f195c45f7969a99545150825e8d2b9e72f1cf43f5"

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  name "DarwinDumper"
  desc "App to dump system information to aid troubleshooting"
  homepage "https://bitbucket.org/blackosx/darwindumper"

  livecheck do
    url "https://bytebucket.org/blackosx/darwindumper/wiki/DD_AppCast.xml"
    strategy :sparkle do |item|
      item.short_version.delete_prefix("r")
    end
  end

  app "DarwinDumper.app"

  zap trash: [
    "~/Library/Caches/com.DarwinDumper",
    "~/Library/Preferences/com.DarwinDumper.plist",
    "~/Library/Preferences/org.tom.DarwinDumper.plist",
    "~/Library/Saved Application State/com.DarwinDumper.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
