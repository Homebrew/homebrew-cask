cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"

  artifact = on_system_conditional linux: "Terax_#{version}_amd64.AppImage",
                                   macos: "Terax_#{version}_#{arch}.dmg"

  url "https://github.com/crynta/terax-ai/releases/download/v#{version}/#{artifact}",
      verified: "github.com/crynta/terax-ai/"
  name "Terax"
  desc "Terminal-first AI-native developer workspace"
  homepage "https://terax.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  on_macos do
    sha256 arm:   "a25cc6d2e2dd958bccbbb83045d31cda55780af2f617850a6df3c59e077774c4",
           intel: "d80372ab32d6782e6192ffd9bdafd3756efc44ad01391d8d59b60c2c142688bb"

    depends_on macos: :ventura

    app "Terax.app"

    zap trash: [
      "~/Library/Application Support/app.crynta.terax",
      "~/Library/Caches/app.crynta.terax",
      "~/Library/Logs/app.crynta.terax",
      "~/Library/WebKit/app.crynta.terax",
    ]
  end

  on_linux do
    sha256 "a6e9ea9e26bdd47ce76563396c31386a85658bafc88206e30dca58b367de85b7"

    depends_on arch: :x86_64

    app_image artifact, target: "Terax.AppImage"
  end
end
