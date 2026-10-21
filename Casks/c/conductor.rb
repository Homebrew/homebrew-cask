cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.91.2,01M5AXSJPPGXRRABBQ1AFXNYQ8"
    sha256 "7efb7008b8289a3d051138a8203306bf7a70e462a25ca329b9bc2bff4ff34933"
  end
  on_intel do
    version "0.91.2,01M5AXS91BW6TN49P8GS6EE3WH"
    sha256 "7f4a7b2dee21d32638c5f3fb62c27af9142cbc06cf58b110f3d1684bfca0ae6f"
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
