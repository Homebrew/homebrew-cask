cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.1.0"
  sha256 arm:          "f3dcc0a9beda7b562ddc3e6e40dba1c5f2b9dd6758b719c56c32b7cf16581d76",
         intel:        "cc9c683b8e5f5eee7ab306696fb09fd5cd6ec73b712e3c52dc6dba3a65a69a5b",
         arm64_linux:  "695d77ce95ddee9b2c3e93fac9cdcc5683f26770734f7d6a5b0c8c4f4ad67119",
         x86_64_linux: "074b434e2a22c7f9db1e5bf43e5f65b834a068bda9a292e97e44f4c5775201ab"

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
