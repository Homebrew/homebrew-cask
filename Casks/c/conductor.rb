cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.0,01M2VAA8219M6GYGH1EGVF5KZH"
    sha256 "a64de79881c289abb53be5ed72625a5f6034ed51f4d2cbffa46d02b507874500"
  end
  on_intel do
    version "0.87.0,01M2VA9X2KHR17QHFEM7RP6HAE"
    sha256 "67ae5e40d90d6154feddda5556aecef24c49cf9f2d1589b1e43c7e7ad87563ee"
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
