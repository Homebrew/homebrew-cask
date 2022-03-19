cask "framer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2022.6.5"
  sha256 :no_check

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/desktop/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
