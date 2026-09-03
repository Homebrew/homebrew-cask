cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.84.1,01M1ME26NVM5KRM76QTBEQFH3X"
    sha256 "72d6027954b3ec4d681afa1cfa3206cca4849687e7614a07f82f483d8934471f"
  end
  on_intel do
    version "0.84.1,01M1ME2DQJTR8BJDGDFH3DAYT1"
    sha256 "e7e826075c0d4cf0b530f4330ab60b15752d594e0742e7074d25e60ba71b8174"
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
