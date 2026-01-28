cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.33.2,01KG36GCPVTMRMY2ZT5YXVSWZS"
    sha256 "6a10967051610d325b48356dc2e31e7d90487bdaf7df116f78af9c68b0bd34ed"
  end
  on_intel do
    version "0.33.2,01KG36722DFFN1CMF0858J2CZA"
    sha256 "c4d841838139d199ea402d3a9f0c7ad2108eb68ec61df5c4b48a31003a30a1a3"
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
