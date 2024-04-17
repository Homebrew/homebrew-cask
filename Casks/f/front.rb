cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.51.5"
  sha256 arm:   "ce0a58dd4e8f8cf0fe67680e69ebd8d9db8e73ccaf3c56565453a2bd8e46ea8f",
         intel: "d07be8306761e916343c4f9dd30e75fb298ab01cd8f3c694614230512b72292d"

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
