cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "1.39.0"
  sha256 arm:          "aac3b959a12e56949c7f883ac62e36a8d7fd9f1951f10022174fcfdd4fd8a266",
         intel:        "d5c9eccad73abf5832e2f66f54294f4581631dbee35298f7334ce2a06afb474e",
         arm64_linux:  "2e76cc62d1aa7efd6d4ae13abd4c7cbd5c66c7be0f5fe245105cf68dc253636f",
         x86_64_linux: "90298cceda4d494cf4569abdaacc4f7aa3aa68571ef59546cc9e7874d6eae5d9"

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
