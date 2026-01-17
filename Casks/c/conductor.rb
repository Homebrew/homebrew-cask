cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.31.1,01KF4N2R3NV1AEG8NG547ABS08"
    sha256 "d6e8549696f2d208479aada97ba1b63a9d5734add8810938ebb9e271663794a1"
  end
  on_intel do
    version "0.31.1,01KF4MSG28NZ7BX6REQZ2A20MB"
    sha256 "765b46fdd23342a804c61bf03b5c60e703922d0b3f966dea6a76bb1f6f9fa1e2"
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
