cask "keepassxc@snapshot" do
  version "2.8.0,285089"
  sha256 "78096edd03b9285d594732e673e11fb0c616a65b1fe1b1f06a0122bf9c7c82cd"

  url "https://snapshot.keepassxc.org/build-#{version.csv.second}/KeePassXC-#{version.csv.first}-snapshot.dmg"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url "https://snapshot.keepassxc.org/"
    regex(/href=.*?KeePassXC[._-]v?(\d+(?:\.\d+)+)-snapshot\.dmg/i)
    strategy :page_match do |page, regex|
      # Identify build numbers from directories like `build-123456`
      newest_build = page.scan(%r{href=["']?build[._-]v?(\d+(?:\.\d+)*)/?["' >]}i)
                         .flatten
                         .uniq
                         .max
      next if newest_build.blank?

      # Fetch the directory listing page for newest build
      build_response = Homebrew::Livecheck::Strategy.page_content("https://snapshot.keepassxc.org/build-#{newest_build}/")
      next if (build_page = build_response[:content]).blank?

      match = build_page.match(regex)
      next if match.blank?

      "#{match[1]},#{newest_build}"
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: [
    "keepassxc",
    "keepassxc@beta",
  ]
  depends_on macos: :sonoma

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  uninstall quit: "org.keepassxc.keepassxc"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Preferences/keepassxc.keepassxc.plist",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
