cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "1.37.0"
  sha256 arm:          "b09aa9956831489b0886a6f9d18ce23bd94ae9b813abea7dbc9cd9d4bdae1798",
         intel:        "a91d6a7d0060d6435566033647c5e7f4be1bc018ac9e99a47b1f4a93bb003cbe",
         arm64_linux:  "f8132ffa781406f16fed7928a9754b6943ffe4e3b2b7a46710edc57628e3ddf5",
         x86_64_linux: "e76c0d6be72d7d39689284a5cf2e56e71938af78c447370dddedccd4fd5f16e5"

  on_macos do
    disable! date: "2026-10-04", because: :fails_gatekeeper_check

    app "JET Pilot.app"

    zap trash: "~/Library/Application Support/com.unxsist.jetpilot"
  end
  on_linux do
    app_image "JET.Pilot_#{version}_#{arch}.AppImage", target: "JET Pilot.AppImage"
  end

  url "https://github.com/unxsist/jet-pilot/releases/download/v#{version}/JET.Pilot_#{version}_#{arch}.#{os}"
  name "JET Pilot"
  desc "Kubernetes desktop client"
  homepage "https://www.jet-pilot.app/"

  livecheck do
    url "https://updates.jet-pilot.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
end
