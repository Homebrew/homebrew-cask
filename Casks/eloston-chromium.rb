cask "eloston-chromium" do
  arch = Hardware::CPU.intel? ? "x86-64" : "arm64"

  if Hardware::CPU.intel?
    version "100.0.4896.127-1.2,1650120296"
    sha256 "bed91fc377792ce75931508ed5a4dba64b20132eddcdb1c47db21b23a5ccf347"
  else
    version "100.0.4896.127-1.2,1650154514"
    sha256 "c632544250f5986a3952c09467813d1809e57f066e17112046d33e851c7b0420"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version.csv.first}_#{arch}__#{version.csv.second}/ungoogled-chromium_#{version.csv.first}_#{arch}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  livecheck do
    url "https://github.com/kramred/ungoogled-chromium-macos/releases/"
    strategy :page_match do |page|
      match = page.match(%r{
        releases/download/(\d+(?:[.-]\d+)+)[._-]#{arch}[._-]{2}(\d+)/
        ungoogled[._-]chromium[._-](\d+(?:[.-]\d+)+)[._-]#{arch}[._-]macos\.dmg
      }xi)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
