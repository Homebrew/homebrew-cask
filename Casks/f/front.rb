cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.65.4"
  sha256 arm:   "80bbc90be5bee45d5196af25e6052aa6374fe5f698c5ff93ea6d0e986d1632b3",
         intel: "8be6711ff4cb6008dfdb02deb3352e522973a3186acbb16fe417c830b0a727d5"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
