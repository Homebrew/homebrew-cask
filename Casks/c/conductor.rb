cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.49.5,01KQ0Z63RRHPXMQFX01XH25ZFD"
    sha256 "2c3d5f0d176af233f7cd9e20c4e93fc63e2a8c6063474fac7cd56c7dae021fd6"
  end
  on_intel do
    version "0.49.5,01KQ0Z5RAAWGFC5MCQNN2WPHQQ"
    sha256 "3f8e0fed04f8f1d22fa9f726049db48e63db07d9a47e41afff546e95cb5ad427"
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
