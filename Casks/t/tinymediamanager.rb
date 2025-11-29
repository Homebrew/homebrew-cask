cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.4"
  sha256 arm:   "b5ac5b7cfe3529426eadef049cbd25fcf4efd8410bc9e377ec8a9d91d8708208",
         intel: "649f8ac6aa20d7cb957a097988b77c4604aaf5a23b414bde048d6283b0248151"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
