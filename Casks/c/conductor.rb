cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.84.2,01M1Q0E22GXE2PKE93VP2386RV"
    sha256 "724e706fb32b47419b16bb4cabaee5cbc08d5f63c4565c36fe86bd34aef12749"
  end
  on_intel do
    version "0.84.2,01M1Q0E623WBGZK80RB6MSBGAD"
    sha256 "7e7cb03dd7a1b80a13a68de7db095441a1f343e477075f526123c0dd3c2a8c28"
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
