cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.73.3,01KX44955GBE7PNET2B46YW40P"
    sha256 "ecd64b8c7e93ccae2006b5d86f04a2ffc006a71e377afc50cdeea4df82fcfd55"
  end
  on_intel do
    version "0.73.3,01KX449HVBMX07ASTBDNAXQVPP"
    sha256 "bf1ca17385d6570b81d95874d1125fa44bc4eb377bbb8e0dee829e5530af358d"
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
