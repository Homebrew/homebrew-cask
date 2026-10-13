cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.1.1"
  sha256 arm:          "5bbffa2043bbe13938c1b14ca94fcd93eeaacd70d8b4af22f52e7a346915974d",
         intel:        "02e550eb606f34ca265fa3fa99902e7b762a773772938223f36f830acd8688df",
         arm64_linux:  "7516e15776b53929821f8a320efe05106e1e87ad4a8a50119a02296b65c2d41a",
         x86_64_linux: "038945cae3a851b45024d473bfa9186d15f0cf6fd809327ae857f4193a4d86c6"

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
