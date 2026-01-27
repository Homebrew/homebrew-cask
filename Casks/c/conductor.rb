cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.33.0,01KG0EP3ZWM47NFASWX16N38PC"
    sha256 "e1c4a9276cd1f8f118e670f9e3b43d5c660e293d68863bb2b4ed7b36064efd42"
  end
  on_intel do
    version "0.33.0,01KG0EQ6Y7AFGRADEKE0CX8AAN"
    sha256 "1fd7e1a12a4ac0bbfeb5769a0754a7012deabe0a36340ef776da95fd4f7cd528"
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
