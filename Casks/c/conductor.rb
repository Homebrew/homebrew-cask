cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.31.0,01KF1JH58DXRQ47RZPRX3MZPC8"
    sha256 "0879bd436291b96f30af98f7afb02eb4054eef6c08ef877b7075f424bdc7926f"
  end
  on_intel do
    version "0.31.0,01KF1JBATSAVWN1Z8Z1X51YAMX"
    sha256 "3d56d19b7cf245ce7fa83af8922e3a853ac58d903ecc36510bd7d429ae36d78b"
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
