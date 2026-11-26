cask "anomaly-spaceman" do
  version "0.3.7,3cc8f44a3ed93fbc8a0f08ff587e98bc9ffe253217f566090dad2fa5feab8f86"
  sha256 "3cc8f44a3ed93fbc8a0f08ff587e98bc9ffe253217f566090dad2fa5feab8f86"

  url "https://anoma.ly/release/spaceman/files/#{version.csv.second}/Spaceman.zip"
  name "Spaceman"
  desc "Tiling window manager"
  homepage "https://anoma.ly/spaceman/"

  livecheck do
    url "https://anoma.ly/release/spaceman/desktop/stable.json"
    strategy :json do |json|
      version = json.dig("release", "version")
      sha256 = json.dig("release", "targets", "macos-arm64", "sha256")
      next if version.blank? || sha256.blank?

      "#{version},#{sha256}"
    end
  end

  auto_updates true
  conflicts_with cask: "spaceman"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Spaceman.app"
  binary "#{appdir}/Spaceman.app/Contents/MacOS/spaceman"

  uninstall quit: "anomaly.spaceman"

  zap trash: [
    "~/Library/Application Support/Spaceman",
    "~/Library/Preferences/anomaly.spaceman.plist",
  ]
end
