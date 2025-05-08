cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.6"
  sha256 arm:   "f0bcbeb10f01bbf4907fc52eaf052c3770eeb88a9fc07e29e97db1c9f3ed575f",
         intel: "f53918251b6fab21c59908557f2c37d28019fad9fdc5becf02dbba3f1605dbe5"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
