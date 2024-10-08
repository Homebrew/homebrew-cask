cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.60.4"
  sha256 arm:   "cc80ffeebb0f477ca68752af4fe4820ed0acfed3f9b5316498ddfe3a45323ab1",
         intel: "f4cfd52c41a4e297b28aa997343266630fe0ba32fb3b368d8f5ea8fab2b72ab3"

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
