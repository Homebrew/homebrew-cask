cask "lens" do
  arch arm: "-arm64"

  version "2023.12.80831"
  sha256 arm:   "9ae7ebd2595c48bc797567efe5e04f99eb5612e1d98bd5a9fe33e71d336e435e",
         intel: "d90d824535ea016c3f1f426fdea42b114e1f6a40342c374ac86aa714f8ea4230"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :json do |json|
      json["version"].sub("-latest", "")
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
