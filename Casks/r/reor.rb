cask "reor" do
  arch arm: "arm64", intel: "intel"

  version "0.1.46"
  sha256 arm:   "84ddd7ac91a8aeae2a19128c4434a012a34de79fcddcdb87c5a524d2ddb58ec1",
         intel: "7996a1915e2ba8b2135a7a2e5b5b9a293e7aa7b4cd50f79b8c3f27732b4c623a"

  url "https://github.com/reorproject/reor/releases/download/v#{version}/Reor_#{version}-#{arch}.dmg",
      verified: "github.com/reorproject/reor/"
  name "Reor"
  desc "AI note-taking app that runs models locally"
  homepage "https://reorproject.org/"

  app "Reor.app"

  zap trash: [
    "~/Library/Application Support/Reor",
    "~/Library/Preferences/YourAppID.plist",
  ]
end
