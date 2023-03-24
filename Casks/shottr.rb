cask "shottr" do
  version "1.6.2"
  sha256 "23b12428e005b61903b32deab43c7e84842dfa3d7b04c631be7d442ae3590165"

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
