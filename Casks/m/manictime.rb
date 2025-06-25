cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2025.2.0.1"
  sha256 arm:   "c90a000a96a89ba85307fed2fd36a1f60e4155a00db97b90a95876ff67cf5a6c",
         intel: "3570bde9f30c8cfdfdfdac52ba4fd4a1ca9714a6102e962b4c2803b5e5021f8d"

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
