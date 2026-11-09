cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.93.0,01M6KR44F2MT1786PCBKYWBN4Y"
    sha256 "b7326fd61a78d638a1ce1106fea70a86e851b84b4218b8605ad4bd2ffcbb4671"
  end
  on_intel do
    version "0.93.0,01M6KR4QRGMEZ6K3K6CXFHFZHE"
    sha256 "a3a5ae93da94c3c366da9c0e920cfa4b1fff61e1aa34a29a36c5a3e5bf9e66fc"
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
