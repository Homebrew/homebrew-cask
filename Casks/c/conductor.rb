cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.54.0,01KS0KDN938HN6VM773NNNPJS2"
    sha256 "3ee7d2e6b07d4e599751d6464c9cf37a5a63966ac4b0a95bf62a0a415b0bb6e5"
  end
  on_intel do
    version "0.54.0,01KS0KD70J6D0FZ52GX34XEMHT"
    sha256 "a5060e8afa3ac5a0b21afd4d551b8f8b44990276fdb27f31dde576c02d0e8e38"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
