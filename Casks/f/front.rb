cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.55.2"
  sha256 arm:   "8c756016e03970702daa8b649f9462ea817355caffaeb44823dfa5c4826b5019",
         intel: "c10ec5bd0aa6fb2066bd89c4491fa6410aa2b8be0ead2c13a22b0708d4589924"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
