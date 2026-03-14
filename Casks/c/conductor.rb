cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.39.2,01KKPWD3V5YVKNWGN2T2Y0HP3G"
    sha256 "e00fab0dd9b1d38c44d2dec57b5eb29fdc520b30e228ac22f741a79cce3183a1"
  end
  on_intel do
    version "0.39.2,01KKPWCHBS22NWBD4M1HBVGAYD"
    sha256 "fa8e9eab59fea01857cfef59bd3e272570b7f0dded593f2ff3fdcec5ab982ab9"
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
