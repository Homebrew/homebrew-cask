cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "166c88d18bddcfdf3f5db25554f996497b956bf14e0719f12e39505f911fba70",
         intel:        "923096ca1fdfdc99f2bdaa32edf5f4b237c121027c41743b03f1792671d07edf",
         arm64_linux:  "b9faa58920dfa513ead5c294a3f0e05726711764a07ed198e1e7b9254662a782",
         x86_64_linux: "76b9bf49ce4d61ba006cfd84cf1c684f5cbf35e94a8206c3022731215e920b32"

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
