cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.94.1,01M73G9TKP59MJ300X9XMR9D60"
    sha256 "735e17a69e901b2dacb0a1b0e8b6459efdedb447b17fb0b17434b1a54f4277d6"
  end
  on_intel do
    version "0.94.1,01M73GA0B1271ZAXJV1GM31E29"
    sha256 "c57c36211a83b08534238fc3c13b3ecf50303248ed2eccc5c5ab2d63df189f74"
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
      ],
      rmdir: "~/.conductor"
end
