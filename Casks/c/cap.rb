cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.5.2,01KW4PZ5EEP7CYWDXJ2Y1PHB69"
    sha256 "34c30bd646da3f2471c7266ea7391cdaebe85cd6203dd71ea04d820779bac551"
  end
  on_intel do
    version "0.5.2,01KW4PW6RHK6CT819JW5AKBK2X"
    sha256 "ae21187e8f24f0f73023397f7f36193aef340001e394b11c40d572ad90b78f01"
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
