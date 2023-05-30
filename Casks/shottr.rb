cask "shottr" do
  version "1.7.0"
  sha256 "6b7553c9d69455d06a43ca14d30b84cc48cf2b7575f7a5e395656c10906161b0"

  url "https://shottr.cc/dl/Shottr-#{version}.dmg"
  name "Shottr"
  desc "Screenshot measurement and annotation tool"
  homepage "https://shottr.cc/"

  # `version.json` provides a `latestVersion` field but it can reference an
  # older version while the `package` field points to a file with a newer
  # version. With this in mind, we extract the version from the `package` URL.
  # Note: This regex intentionally omits the file extension, as the cask uses a
  # dmg file but `version.json` references a pkg file.
  livecheck do
    url "https://shottr.cc/api/version.json"
    regex(/Shottr[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["package"][regex, 1]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Shottr.app"

  zap trash: [
    "~/Library/Application Scripts/cc.ffitch.shottr",
    "~/Library/Application Scripts/cc.ffitch.shottr-LaunchAtLoginHelper",
    "~/Library/Containers/cc.ffitch.shottr",
    "~/Library/Containers/cc.ffitch.shottr-LaunchAtLoginHelper",
  ]
end
