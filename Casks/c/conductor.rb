cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.40.1,01KKWBAPKDEFGSB0PK0PY348AN"
    sha256 "cd1765a23a326cb3865652dac9b277cc8db2620886f271447ed4fc585b7dfeaa"
  end
  on_intel do
    version "0.40.1,01KKWBE508ABVV17W5XR23DV3Z"
    sha256 "105828693dfc54d55913327a82066025731bd14a6dd06ebebc79e338a235bd88"
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
