cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.89.3,01M3TAKEEGERMS03E7CBGXY126"
    sha256 "6994c0b45607eeb2175f314970d2242123fcad449e76fe3bf6f9d5a096a1f128"
  end
  on_intel do
    version "0.89.3,01M3TAKJN2VYVYW4SFPKYDKY10"
    sha256 "fe17de8462088275ff808e1af25897b2502e8dbed59c57536bfdb6083f8e076e"
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
