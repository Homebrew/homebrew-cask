cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.6.0,01M2JE5SBQ73J4PJ6TZW168VGT"
    sha256 "8b09b0610cb4ef282d4bd61d3c4482129bf7fa61fe6607baa22a6f9590b5dcc7"
  end
  on_intel do
    version "0.6.0,01M2JEBK9WK5WW00728DRDGCKG"
    sha256 "181fa30db35a7a474cef6d344c33f58484748c592ea5bfabb98dfae0b86bde90"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{/asset/([^?/]+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
