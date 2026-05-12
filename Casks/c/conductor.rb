cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.52.2,01KRCV63BSGWFHD68P8N1WM9JP"
    sha256 "bfc2095c9d457ab0148d215c3a18209b9ad3b7887b7556b1bcf2ff9e6c4d8c41"
  end
  on_intel do
    version "0.52.2,01KRCV5FX2FT8NW5WQT0CNQGNF"
    sha256 "b33b088fd0df66b40bf8294151e1dae222dbe7c3f78c42b861bcfff2943f75e7"
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
