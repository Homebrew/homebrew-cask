cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.1,01M334JRT3SB5A2VRYSQ7Z1GKK"
    sha256 "94fe978a3d5e7268678269486582beb32db9a3bc46f6b132db57842b84388291"
  end
  on_intel do
    version "0.87.1,01M334JEW7W8GSG374YKKBNF03"
    sha256 "52af554e8cc48a27a87d610bb919d25afae6fc8d956bcdd73dbfb88f1a9f4661"
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
