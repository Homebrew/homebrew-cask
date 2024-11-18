cask "ocs-desktop" do
  arch arm: "arm64", intel: "x64"

  version "2.6.10"
  sha256 arm:   "dcd398620da0f11c6c8a74428bca6e87b64dc25691c8cc0336e2eec3ed0f4f99",
         intel: "97e75a71c86f2ff511ed9039a5b36aa736b820301eaed7ebce01263fe6ca3922"

  url "https://github.com/ocsjs/ocs-desktop/releases/download/#{version}/ocs-#{version}-setup-mac-#{arch}.dmg"
  name "OCS Desktop"
  desc "OCS网课助手"
  homepage "https://github.com/ocsjs/ocs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "OCS Desktop.app"

  uninstall quit: "ocs.enncy.cn"

  zap trash: [
    "~/Library/Application Support/OCS Desktop",
    "~/Library/Application Support/OCS Desktop/DawnCache",
    "~/Library/Application Support/OCS Desktop/GPUCache",
    "~/Library/Application Support/OCS Desktop/Local Storage",
    "~/Library/Saved Application State/ocs.enncy.cn.savedState",
  ]
end
