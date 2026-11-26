cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.0"
  sha256 arm:          "a1bae98ea5c20c84c9c1c2118859c7a9f468105181f2cc2eac74693c54b1c744",
         intel:        "ec6da3191f274ac315cbdc268125133ca31b81ad8d188229d152bccd328f1249",
         arm64_linux:  "805db3bb66953afee6451435594d818925e764b449ed26fd89dfbc0b432d5245",
         x86_64_linux: "83c182d6ea99b27e2ec98b7d6c7f4e1e749661bc5a6117573558f309bc8ff59c"

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
