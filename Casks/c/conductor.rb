cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.70.1,01KWD8NBSFHHMTC1ZQGYD4FDQC"
    sha256 "2dfa6c515bb7874100e88ecfd1699d86793b487a4df66185d364c075fce37ef9"
  end
  on_intel do
    version "0.70.1,01KWD8N6JNXNNNF4EBXW55RY3T"
    sha256 "67298d3939add946d1ded3ec35f6d7ba112ff4857c483930321dbc5534c8aa96"
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
