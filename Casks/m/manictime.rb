cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2025.2.2.0"
  sha256 arm:   "04817726676dfd62be12e9dec1d1d01a5498944163cc0c3170993f87f351d448",
         intel: "114b347aba9ebc8c922fec6150cb45aab8451e0430fd9475db7ef2688f72f30a"

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
