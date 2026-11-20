cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.3.1"
  sha256 arm:          "a424fd4369ca90f212c1f962c6a06e6ea447bd3c1739fb03bf278de408a3137c",
         intel:        "e9114f46c04d28614c68d9eb0379ecb234249c66e0b530c46402dfbd3a2f8b4d",
         arm64_linux:  "53c531c6dc62a3bf687990edeb77b410dc12b07484c734988e6c7e654e5e38ea",
         x86_64_linux: "2cad68c7194cff98fde691f2c48457b0ce4b0f10b699251dadf1a1a7ce5ac34f"

  on_macos do
    disable! date: "2026-10-04", because: :fails_gatekeeper_check

    app "JET Pilot.app"

    zap trash: "~/Library/Application Support/com.unxsist.jetpilot"
  end
  on_linux do
    app_image "JET.Pilot_#{version}_#{arch}.AppImage", target: "JET Pilot.AppImage"

    zap trash: [
      "~/.cache/com.unxsist.jetpilot",
      "~/.config/com.unxsist.jetpilot",
      "~/.kube/jet-pilot",
      "~/.local/share/applications/jet-pilot-handler.desktop",
      "~/.local/share/com.unxsist.jetpilot",
    ]
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
