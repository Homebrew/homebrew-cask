cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2023.8.0"
  sha256 :no_check

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
