cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2024.1.1.0"
  sha256 arm:   "7b456cce2a34ffc4dcfd49484ae90dfb2391a9820d6914f1cd948faa72a193e4",
         intel: "4d2b9aeadae0d5e62cb2c1a3f8e9c3dff9e2100eb7f4e41e30ce4299ce18ce0d"

  url "https://cdn.manictime.com/setup/mac/v#{version.dots_to_underscores}/manictime-#{version}-osx-#{arch}.dmg"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/"

  # The download page includes a link to a beta version, so instead of
  # mapping over the versions present on the page, we return the first match
  # which is the latest stable version
  livecheck do
    url "https://www.manictime.com/download/mac"
    regex(/manictime[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :mojave"

  pkg "ManicTime.pkg"

  uninstall pkgutil: "com.finkit.manictime.tracker"

  zap trash: [
    "~/.local/share/manictime",
    "~/Library/Application Support/com.apple.sharedfilelist/*/com.finkit.manictime.tracker.sfl*",
    "~/Library/Application Support/ManicTime",
    "~/Library/LaunchAgents/com.ManicTime.mac.start.plist",
    "~/Library/Preferences/com.finkit.manictime.tracker.plist",
  ]
end
