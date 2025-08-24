cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "2.0.5.5160"
  sha256 arm:   "28bf4cf0a0c01d74d09cbe35a3d6bedbc75a1ac87a23bfad2ee4023733c43381",
         intel: "3b9972b8d270af07213dbfd4e7fc0e038c113d1582ef3c38787694fe59235bd2"

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
  depends_on macos: ">= :catalina"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
