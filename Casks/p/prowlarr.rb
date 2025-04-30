cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.35.1.5034"
  sha256 arm:   "6fd684a86844aa9b87310a1dae039ffaedf8dc6aee7920a56e2a4ecdc757ec57",
         intel: "045eb05e9dfb7a42693001e967afe597ce8455b749fc1129688592696330d2b3"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url "https://prowlarr.servarr.com/v1/update/master/changes?os=osx&arch=#{arch}"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
