cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.6,01M3MT7PPFKHTG25RZ2S37JKZB"
    sha256 "d2d62661dc6476d44d774a2f76293f0f69634bf2fa635824b3ec0ead118cbe77"
  end
  on_intel do
    version "0.87.6,01M3MT85FQHR6H2W1SZ1Y9N7XS"
    sha256 "7a4184c4bdc1b4f381ed928505cdd3d0775a30be704e9784ad2ccf7b4719378f"
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
