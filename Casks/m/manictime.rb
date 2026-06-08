cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2026.1.1.0"
  sha256 arm:   "b79eb7a167b9988ca5a3ec7dac5003f91032b969e9523efceb27114822d05369",
         intel: "ffc6163bfa2be65809f0e3810cfd96c2e1cf2e9bd096100e61e64e1b8e6921c8"

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

  depends_on macos: :monterey

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
