cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.94.0,01M711WZMNGZFHH32CE64F6XBD"
    sha256 "7e00a2529a48efa9330ffe21fecbf87c738252bc6f5aa4da91511f5a8a926714"
  end
  on_intel do
    version "0.94.0,01M7120BRCQGNJPAETHD007JKX"
    sha256 "9277a3e4dbcb4fda419096110b401537336d0ecc111e43188fdd5fa521bc8a69"
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
      ],
      rmdir: "~/.conductor"
end
