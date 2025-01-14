cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.12.1"
  sha256 arm:   "7646da9229dfd073e103868ab56ee6be558f07ba5925f138ba9e775a329f7ba7",
         intel: "79a5392b5d0b42615a71ebc789cdeda736609aad3f99d6de63e074b958c271dd"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}-#{arch}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/en/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)-#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenlive-layoutsrc",
    "~/Library/Preferences/kdenliverc",
    "~/Library/Preferences/org.kde.Kdenlive.plist",
  ]
end
