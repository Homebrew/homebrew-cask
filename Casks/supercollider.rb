cask "supercollider" do
  version "3.12.1"
  sha256 "7a987249751f7eb5d1678b01e8ade88b7afd205e907afdbd1e0d587856a1ea71"

  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.dmg",
      verified: "github.com/supercollider/supercollider/"
  name "SuperCollider"
  desc "Server, language, and IDE for sound synthesis and algorithmic composition"
  homepage "https://supercollider.github.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^Version-(\d+(?:\.\d+)*)$/i)
  end

  app "SuperCollider.app"
end
