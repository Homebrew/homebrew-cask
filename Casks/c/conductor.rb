cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.49.1,01KPY124ZZZ0ST6179QK1CRH8N"
    sha256 "e6d1f9166fd92ae49b8eeaf2fe1a9bb9d872d4d983ba4d846c332634d758afd6"
  end
  on_intel do
    version "0.49.1,01KPY11RAT0KF3H1HS43NZN4SP"
    sha256 "46f5d7cc18179dae26d2b41c62b71d4401928835ffb6100af8245e8024c137e1"
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
