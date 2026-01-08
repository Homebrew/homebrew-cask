cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.29.1,01KEFABBHZZ3XE8EE7GTQGBJMG"
    sha256 "7bbdbbc131ea45d7e2c4b4dde31ba5e1427875a1de4921fc7544e0f8ec66f1f9"
  end
  on_intel do
    version "0.29.1,01KEFAG939YCG1M4N965F64F7Q"
    sha256 "02421703fb4c1e0c6ba3400d063a15d5e70befbd4f407bd379b6c5c8e37078a1"
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
