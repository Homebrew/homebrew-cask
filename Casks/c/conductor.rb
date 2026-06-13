cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.65.1,01KTYZ8NZEDT9FD6Y1KAMJ0RNS"
    sha256 "4bbf0af67c61bf266028f380886accf655f6e4b6c1be4d91f820397262184e02"
  end
  on_intel do
    version "0.65.1,01KTYZ8CXK9GT7R0SPCEKD4RHK"
    sha256 "41fa086f9a1c1a2ae34ecd5e128205fade50798f641f54a0d8d7a01d9d5d689b"
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
