cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.68.0,01KVH8B1E5AX98JAPD90BXBW61"
    sha256 "d36ca9a6f17c27d842b7a5bbd63a1a01965379be1e9a196c1f77d07f4653f469"
  end
  on_intel do
    version "0.68.0,01KVH8AWRP20MNS3M6JQNX2AXM"
    sha256 "225bf44289d46e0f85da4977af209f1367e5b2e1bc08c05b3147255676709eb6"
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
