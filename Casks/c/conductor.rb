cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.48.5,01KPH3MWDCX9P8X70QA9PDQ0RD"
    sha256 "2da609e6ce518d66fc10f4a066e3948aa175d133572b61ea8c5ec8279bb46f24"
  end
  on_intel do
    version "0.48.5,01KPH3MEMDG9584SVA06JHX1A9"
    sha256 "82b16aa2fb1e9de3556e2203fb06798093ec9a36f1accaee472a658e30580eb6"
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
