cask "supercollider" do
  version "3.12.0"
  sha256 "a8a1c430ff3eaeea402dd266432cf5e825a745ab530c708d7de4a607a20955b6"

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
