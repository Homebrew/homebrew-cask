cask "jet-pilot" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "2.2.0"
  sha256 arm:          "6b9829b079d7cf4deb3c71f77ab14067bfae67769f6c4b6a757fb172c3ebc881",
         intel:        "5f5e445408d8fe55d221b2373c268e3b6987d8a3b651b7f69214036c1309d7c7",
         arm64_linux:  "bffc26f5163b1f170f0f1a77fd18e40b37b94df73a6d6f516df2a464e907a35a",
         x86_64_linux: "4d2cad69e6d7b394e68355b3e3b8f8a344d6c17e0be62420678f5bce644021e3"

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
