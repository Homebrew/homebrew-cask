cask "gpodder" do
  version "3.10.18"
  sha256 "a51a856ae42b45356f08f43ad66b8d93a6ba923b75c7c3918a9c2178ebeb17b6"

  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip",
      verified: "github.com/gpodder/gpodder/"
  name "gPodder"
  desc "Podcast client"
  homepage "https://gpodder.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "gPodder.app"

  zap trash: "~/Library/Application Support/gPodder"
end
