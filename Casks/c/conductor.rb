cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.62.1,01KTERD7V2DH9VMSHYCDKZHG6H"
    sha256 "5b63f12093ccec07d2af7a885c498eb39c988f7dc59c85cc7964946fc1d8a20a"
  end
  on_intel do
    version "0.62.1,01KTERCVQPRE8JK105H6R0XSF0"
    sha256 "824480b4456bcf39805e452c3c5439c59ea93a72c2dcc86b64c49e6cd9baa3c1"
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
