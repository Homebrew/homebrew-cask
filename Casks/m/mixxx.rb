cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.5.4"
  sha256 arm:   "fce449cc762d86d516b917ca0c510e6f03b35d17343ae7244340e6d7e6b0dabd",
         intel: "22b5353bd67ec29ed9d76bd707937ea4c805d532c8c1872d450244b1be2ce804"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx@snapshot"
  depends_on macos: ">= :big_sur"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
