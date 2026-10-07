cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "8910ba71d307d348ce256f21d99eccc8937a497533d2e1cf9cdad6d03e15e8a5",
         intel: "e139938179f2b6c3423a1ed01769579109f4a4628f2523a026a428ba947ac690"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
