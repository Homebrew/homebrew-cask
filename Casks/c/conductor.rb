cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.89.2,01M3QKQR4V2NXYSVK7M313GT72"
    sha256 "d83b855051ae1f0fe0b1f912f62f9472c3e5ac45abf263eb817af2658e4d907e"
  end
  on_intel do
    version "0.89.2,01M3QKR159B4GK4GCRJ8GRDZRW"
    sha256 "1fe38c7260e5bfd4c752f4d3777eb17db6a60ba6aa1f1bbe4a47e29829879cc9"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
