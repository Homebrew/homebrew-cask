cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.1.2"
  sha256 arm:          "04db8d48f27c0f3961a844b6e7f27a3ace6da17556c63aaa2353c9e1889cc130",
         intel:        "3daa530818afeea899a5b583d4da69e00c222b1a2002037e4b38eb0627918ce6",
         arm64_linux:  "057821ddcaa8bba7c2791a6c9f4874c98aad72495b2c8253471f72385c929578",
         x86_64_linux: "1f86e8502bdda2f5395351f58d528d741e928fd9541bd4d25a8564e44fef047b"

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
