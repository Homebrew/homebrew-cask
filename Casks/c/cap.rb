cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.5.9,01KZEFZAJ7Y5HXAVZQ528G1CPY"
    sha256 "ca409e429dc6658eeaf7c32b32ec697e9ac2e0d3ff90c20967b3d24fcf880e76"
  end
  on_intel do
    version "0.5.9,01KZEFNM50P8RQP41250ZJRW1E"
    sha256 "a1bdb4a780e1dee7d313ca13cebec2a5fa8db7102e3cbeb449eacf6471d40507"
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
