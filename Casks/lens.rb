cask "lens" do
  arch arm: "-arm64"

  version "2022.12.121519"
  sha256 arm:   "228540e9ce27fdf68b92be2400ceae68ca8fb47ad1ca16737444c1beaf182153",
         intel: "c858d164eeafbd7658b262fe53a614d31254ba74d7e0316786493c2d783d4624"

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
