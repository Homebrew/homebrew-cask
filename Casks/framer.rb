cask "framer" do
  version "2021.16.5"
  sha256 :no_check
  
  if Hardware::CPU.intel?
    url "https://updates.framer.com/electron/darwin/x64/Framer.zip"
  else
    url "https://updates.framer.com/electron/darwin/arm64/Framer.zip"
  end

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
