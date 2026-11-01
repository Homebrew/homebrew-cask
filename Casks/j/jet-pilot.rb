cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.3.0"
  sha256 arm:          "e881d0937f6f7a126471eb505d05b5bfc490effeb7cd0c45ca1db998c0bcff83",
         intel:        "e2b34f05e045e924ed01abf57bd4421f9a985bae6777d34c8e694e2a1f476699",
         arm64_linux:  "3098d262626a1337b9d586076503c76786fee67caaa157cfe8fcd9804e113869",
         x86_64_linux: "a9528f58fecc97d7044bb76ed58921aee52ad7d0aa1e2d53f6856b01a4e41b11"

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
