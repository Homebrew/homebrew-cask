cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "2.1.5.5216"
  sha256 arm:   "7e59e54913e7b30d218fa8fdb14ac8c86ed6fecbcc5960925535b06e9e33905e",
         intel: "2dcd8d2716369dd0e4a972d19a9c00a8bea0329201f24da0a88e57d9636bf85f"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
