cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.82.4,01M0JW2N3RRVPNDQ2DYJDVTPQA"
    sha256 "a169fdfec4b1047864c076b243295e687bd14f0bfd8e7db579b3d8829fa4fd4b"
  end
  on_intel do
    version "0.82.4,01M0JW2WNNRAAPDWZXHWNN82N9"
    sha256 "284a148e5cb039b35d857648ac434e9b8f903cb9666ffe761bde418399c46e84"
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
