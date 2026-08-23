cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "979a8553920d6496499ca0fea123486b736b68aca8728575b86def23d6c01878",
         intel: "951e8dc6a426561c1913cc90fa02409f6d06e08097db5023e22336d68f3b3b52"

  on_arm do
    version "2.7-alpha-357-gd4c6eab168"
  end
  on_intel do
    version "2.7-alpha-356-g3aa50fd3a7"
  end

  url "https://downloads.mixxx.org/snapshots/main/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://downloads.mixxx.org/snapshots/main/manifest.json"
    strategy :json do |json|
      json.dig("macos-macos#{arch}", "git_describe")
    end
  end

  conflicts_with cask: "mixxx"
  depends_on macos: :big_sur

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
