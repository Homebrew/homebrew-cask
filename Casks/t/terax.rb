cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.5"

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
    sha256 arm:   "dec4c1dcf2b571bd3411d179064cb356492ec7305433ef9528870766f128a414",
           intel: "13696011e53ecfe42e5e37258c81612f1e928892f39da0745f0716c7787e07e4"

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
    sha256 "7cb2e88ee61cc387671db3f81d35a491514138b970d6b4365240edfb743f8192"

    depends_on arch: :x86_64

    app_image artifact, target: "Terax.AppImage"
  end
end
