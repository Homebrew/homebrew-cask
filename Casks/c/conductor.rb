cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.64.1,01KTQ4S5EZT429WGB3D04AS604"
    sha256 "7fafaf2bf9f7bc35b28f5887953924b471d5b26e33cdd528d8426e9a75ef079e"
  end
  on_intel do
    version "0.64.1,01KTQ4RP0MA38RKX05X18CM0CX"
    sha256 "78373de699b85c62505f65c6e93246d0201ac8b9d0dbdcae9a457c4cfdc77f13"
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
