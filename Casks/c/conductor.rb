cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.32.1,01KFM289RDCFS9SAPDJTH4MYDH"
    sha256 "34413611cee11a7acfa21864eb2774234b0b3dad6421dc54293d70b04df2fdec"
  end
  on_intel do
    version "0.32.1,01KFM214M1KQFT6SMY2EBNMQGJ"
    sha256 "66af80da4347057ad0b6cb6c86cc92b0750916065b99cda833b295273afe3456"
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
