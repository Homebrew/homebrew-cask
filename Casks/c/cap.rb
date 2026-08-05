cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.5.8,01KZ8Q4ABWEJAKZQJAVB3CK5G3"
    sha256 "06b590344a2a7ade1325b881c680ef4ff2a2378187ee1dacca759d7d51be21a1"
  end
  on_intel do
    version "0.5.8,01KZ8Q06N7ZQXVK80V49WTKBXD"
    sha256 "078ae63821f874a882c8d3485143aa6540a9102a80d93937fe2f86ac110dfe84"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
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
