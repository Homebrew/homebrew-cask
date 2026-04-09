cask "keet" do
  arch intel: "-Intel"

  version "4.13.0"
  sha256 arm:   "27da264eca14dea4963b25dec62171a5118602e3a258f37ae2bbe9381e7669eb",
         intel: "1e7d45ec6d4181b41ce8b3be52d13759b913dcbe58662e2987a3af8c20c0d955"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
