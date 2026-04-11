cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.46.2,01KNWSY9JSX7D753JT9M5F4VR3"
    sha256 "2ea50294a82e483dd4df8edba6db7e19bd56ac570d5894e1aef0b94c1a902f17"
  end
  on_intel do
    version "0.46.2,01KNWSYPE5EEG4QH2RBPZ2223T"
    sha256 "c1f95774df2fa8b621d3180053b8b8dea48a97ea0236dd330aa8987ba3fb5ec5"
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
