cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.73.0,01KWZABDX33AB48VDAYQ8J8AEJ"
    sha256 "a5e2d7b39de758c6744eae39250b5c4c69b7d36645d7f576a46089391a7b45e9"
  end
  on_intel do
    version "0.73.0,01KWZABQJN7H31Y92JX604GCCF"
    sha256 "d2ac6c342af91d44b7b98c2c7533c91a75a6e334625f8ea5c7dbf1438721c5c5"
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
