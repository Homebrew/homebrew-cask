cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.83.3,01M1HNYV5HBWJ8D4TR8XZ5PCDE"
    sha256 "9230d5c6a8a2593f53c33e0e981d9aef429f925f2953cc763a220e798c9a5b5e"
  end
  on_intel do
    version "0.83.3,01M1HNZ5NMBJYKR5XEJ6RND4FZ"
    sha256 "571baa3a9528d4726cc662ed9c4731cd0b9aa2cb975112715d09c69417ed8668"
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
