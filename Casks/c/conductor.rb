cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.66.0,01KV91K4BTYXKYRJDNQS8Z0SMM"
    sha256 "c5d2977ad911b3752f710d41611d63f7a03d8c153aa86ca3b1d8bfd2a0340937"
  end
  on_intel do
    version "0.66.0,01KV91JVWNXG1HFTJNC8S3DY1F"
    sha256 "41019608c88477efde53286c3f904d82dcd95cf8eef12aff582eacc16fcee883"
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
