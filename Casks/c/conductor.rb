cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.70.2,01KWDP61S2XGWW534Q9E6H6PY5"
    sha256 "436a7875bffebab97378b8781203f97940f53b022ec96afca9f267a1fa95f914"
  end
  on_intel do
    version "0.70.2,01KWDP5X0RB2W8NZ41QV18H0AT"
    sha256 "cbab31b5ebd6e64ab35a7aaea18f839d8d082481dc05f3d77847c1fb05fa77f3"
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
