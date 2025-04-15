cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2025.1.2.0"
  sha256 arm:   "a8691eec535352929b0b19b11937b517e60c4b1058fc27737577df0a69bc5133",
         intel: "1a1c40ef20b761d7259b00c702d4c95d1294b27599fe978e8088673c3c1ea07e"

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
