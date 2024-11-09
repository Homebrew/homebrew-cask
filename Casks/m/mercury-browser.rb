# typed: strict
# frozen_string_literal: true

cask "mercury-browser" do
  version "129.0.2"
  sha256 "dd31d1150ead565f5ffa5d515638548d970f43f786359314d3cafe61833f7178"

  url "https://github.com/Alex313031/Mercury/releases/download/v.#{version}/mercury-#{version}_mac_ARM64.dmg"
  name "Mercury"
  desc "Firefox fork with compiler optimizations and patches"
  homepage "https://github.com/Alex313031/Mercury"

  livecheck do
    url "https://github.com/Alex313031/Mercury/releases/latest"
    strategy :page_match
    regex(%r{href=.*?/v\.(\d+(?:\.\d+)+)/mercury-\1_mac_ARM64\.dmg}i)
  end

  app "Mercury.app"

  uninstall quit: "com.alex313031.mercury.com.alex313031.mercury"

  zap trash: [
        "/Library/Logs/DiagnosticReports/mercury_*",
        "~/Library/Application Support/mercury",
        "~/Library/Caches/mercury",
        "~/Library/Saved Application State/com.alex313031.mercury.com.alex313031.mercury.savedState",
      ],
      rmdir: "~/Library/Application Support/Mozilla"
end
