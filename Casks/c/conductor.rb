cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.28.6,01KDV179PX8025FBGJWS5S3TMG"
    sha256 "125e284035be69d30ee209b08772d5e441c3e7c0d0fc89ae94498f3c7fa01eab"
  end
  on_intel do
    version "0.28.6,01KDV169TYDH74JFQRQS240CQG"
    sha256 "724c36509bd38b0b647e624a40956da2cd4acffda59fd069b9b112c59ecb63ce"
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
