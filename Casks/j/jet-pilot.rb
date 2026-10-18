cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.2.3"
  sha256 arm:          "61a0a5f498b7d44eb9e5b5af1326dd3978086af5c0d116f4e3e9df4163c490cf",
         intel:        "0197ef5d7f156841f9e10b798d34428418e578f6260d09bd9f89bb167ac0e2c9",
         arm64_linux:  "e81ba2c8e2567543699aff062b9dfc9ce9e6c91016e2207a04f96cd07d801cf1",
         x86_64_linux: "f3447f8bb0cda73586c0d48728f514c674c685aa1d1e8083a32e1637e549390e"

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
