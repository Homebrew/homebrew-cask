cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.70.0,01KW2ZSFA98GHH1HAMSXD60YRQ"
    sha256 "092ebbe21c4e4c6775f65f88819f622b69596ca66cdb8bba441807d7b1c3c6a4"
  end
  on_intel do
    version "0.70.0,01KW2ZS5VP05SM613JQN9VPST8"
    sha256 "0fc2bdaab2a670f79aa7e7abc690d914755b492a80643e5d27c04dad4dd21f1f"
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
