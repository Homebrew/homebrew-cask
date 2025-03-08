cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.4.0"
  sha256  arm:   "89b7feaef96e8fe4ad07e17e2f2b748b291510b11be0e7c5957c41f514f5f046",
          intel: "339d0703c1fb5921288e0e902064962465612f1a665da1b511c5e89e20220d6b"

  url "https://keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://keet.io/downloads/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
