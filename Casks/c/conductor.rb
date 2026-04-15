cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.48.1,01KP9A33G7E60MW74WQME9MGQ4"
    sha256 "f6c1f9b9456982e416ebd80bd86cf013a3bfaae3e7614911dc33d26655a48251"
  end
  on_intel do
    version "0.48.1,01KP9A3FD8H9RAR6T6A0DJGH9G"
    sha256 "fc76127f18dc6cd920ab2f37f31dbfed8fc651f011c127ef522e1501951e0e66"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
