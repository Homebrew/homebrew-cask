cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.31.2,01KF6T3S8EXPNVG72XKAQFBM9X"
    sha256 "b191f2f56158351a950064cd06beb9132fe7982d674c41ef9d3e98ad2f873765"
  end
  on_intel do
    version "0.31.2,01KF6T88YY04939K6ERS2FWN09"
    sha256 "25f3306298bdf626dcddc36fd6414dd6ba8c170aa2f81df2ff11250ed7f3b829"
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
