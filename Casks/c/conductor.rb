cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.80.0,01KZPFQF7BNJBNX5PW4B7HZ8K4"
    sha256 "2b3a5b5484f29621b3bbc4acee53741f4e99c8b136a3b9c983d05c731d520185"
  end
  on_intel do
    version "0.80.0,01KZPFQBCF6YKET1N0VJE0Q12A"
    sha256 "b509d486b238106dc620a1ee136cdc8dd6b63282265471ca5b2226b675f05594"
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
