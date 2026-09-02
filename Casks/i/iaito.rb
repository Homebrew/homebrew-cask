cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0"
  sha256 arm:   "7efd38f48e61ce20c173397e4a1ca3227ec2318bc060115849a7481820aa1b4d",
         intel: "9cbbd8aeff74a7381ea4b458e49fa336dd60d231680e3aef66373ad06fb6d8a4"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "iaito.app"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
