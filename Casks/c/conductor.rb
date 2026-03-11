cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.38.5,01KKF5J43SF42TWFREARG90GB1"
    sha256 "95fa192663633b6d600333a789ec13af6be10d6161bf0dda3c13f793a7ce03f9"
  end
  on_intel do
    version "0.38.5,01KKF5GQ6X901NRY06KH7TG3JK"
    sha256 "31209d529dae3563eff0d35b79ae043124e116d688d3dd7e24dfff7689682100"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
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
