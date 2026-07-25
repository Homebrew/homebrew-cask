cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.5.7,01KY04BTBB4QHSYZ6JRKRQ8AF8"
    sha256 "21f3eff9a2127193194f5505b666f68f8d065e1845389db565a1754384935aa3"
  end
  on_intel do
    version "0.5.7,01KY046W437NN0F5E1Z5BD937R"
    sha256 "cb09d167a780d1153225d55b6d3e0a182d49852072dd66dedbfc80a15f5a8473"
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
