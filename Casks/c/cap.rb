cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.23,01JMCP1VV4MMQ5E96E234M1AWR"
    sha256 "3f35d39b505141b4ad85a575ceb2de65c1126241e4ec37f2011e7ad39c7e73c4"
  end
  on_intel do
    version "0.3.23,01JMCP2BCBQ0JFBAWCSMEQTKE2"
    sha256 "30bf0da84c76cd0f04d4e755bef4e5604f98f7109e6168fff38b80ddb6d7f3e2"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
