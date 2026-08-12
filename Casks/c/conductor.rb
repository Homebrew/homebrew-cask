cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.80.1,01KZVEN0ZKJ69VQY980CQFJGNX"
    sha256 "391d607773628c78b6b19f5b24bf71c230fa5dafea7ec30ef356cff691742e60"
  end
  on_intel do
    version "0.80.1,01KZVEMWN4KQWRZ65B8VSESKE6"
    sha256 "a0c47b80c00e1d5fe221effb7203cd1fd25b8cde732265e9f4f1d4b70ee72e2f"
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
