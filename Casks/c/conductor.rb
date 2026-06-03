cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.61.3,01KT5FHQQV1931S1Q430ET1QYR"
    sha256 "b7f50f696ac81c28c22161fd4068b3bbce636964bf6f7af8f4e223b0c97716d0"
  end
  on_intel do
    version "0.61.3,01KT5FHTQG4EFYJQF5DZ81NRD5"
    sha256 "0f43effbf19771abeafc6f5f398a56d3be7b78d4d7e84cdc00d46fed66784ded"
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
