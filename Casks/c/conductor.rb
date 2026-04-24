cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.49.3,01KQ0PWHGRSSA4HQ0KJ1DJ7FQJ"
    sha256 "e89313b440b422f0328e6d0c0aab28d58362885ce0ad8b67a0f1a6e727ba4920"
  end
  on_intel do
    version "0.49.3,01KQ0PX44ST684PCNKDDR62PQT"
    sha256 "b975b255bd1b846f25923c4c102d33e359529cd6c402157004dcf356ae5f3564"
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
