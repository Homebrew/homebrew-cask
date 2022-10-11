cask "lens" do
  arch arm: "-arm64"

  version "2022.10.111653"
  sha256 arm:   "a2f098213690aca2f2cb6f155a3ff44c87ce8c680c9138011abf470b152800ca",
         intel: "313367bea196021faea768d69b508f0d5d50c5d592d419cd8716eb0ffbd35e42"

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
