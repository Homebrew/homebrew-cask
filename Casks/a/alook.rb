cask "alook" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.67"
  sha256 arm:   "b688e5eae20f785b0e891a462a8b9d5155341894c5488d410c07ef6c01f98402",
         intel: "4dac6afd53557f329abf0ff7db325469a93042da78bf2e16ee4902539f7716ee"

  url "https://github.com/alookai/alook/releases/download/v#{version}/Alook_#{version}_#{arch}.dmg",
      verified: "github.com/alookai/alook/"
  name "Alook"
  desc "Local-first group chat for people and coding agents"
  homepage "https://alook.ai/"

  livecheck do
    url "https://api.github.com/repos/alookai/alook/releases"
    strategy :page_match
    regex(/Alook[._-]v?(\d+(?:\.\d+)+)[._-]aarch64\.dmg/i)
  end

  depends_on macos: :big_sur

  app "Alook.app"
end
