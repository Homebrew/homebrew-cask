cask "lens" do
  arch arm: "-arm64"

  version "2022.11.92045"
  sha256 arm:   "a65c8c7cb76705d59223221527439cbb1761bbc88804d4694b32ffb9f8acfc1e",
         intel: "9f3efc3b843b062b6c509d6ce70c84560ca6d159c4beafb221d4aad729229de2"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest", "")
    end
  end

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
