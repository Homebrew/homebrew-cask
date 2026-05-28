cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.59.0,01KSPC3VXB54KKQV71EC72ER0E"
    sha256 "441ff272766375298c1cff8f7d7122ec94526ddcc42e2207119d72b619f2fb0a"
  end
  on_intel do
    version "0.59.0,01KSPC3EM8WENRHMGNZNEEEE3K"
    sha256 "23cf0cd78e6a19c705adb5182820c66d4d2c379e0a19268071387d9cc81fd5bc"
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
