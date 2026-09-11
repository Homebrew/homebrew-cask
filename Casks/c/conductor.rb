cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.85.0,01M2457SNJGNM9RE4DY7C79NZJ"
    sha256 "948d01454641b9fc11940bf4985e293c24c22a0a3f484f087a8ac1999f9e68d7"
  end
  on_intel do
    version "0.85.0,01M2457XZ0X1P5EMGWVR6KBM32"
    sha256 "b7c10b1b038166c00f1899c4503b70ff9115eea79681dce3ec8601a100b56116"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
