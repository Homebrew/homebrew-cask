cask "framer" do
  version "2021.16.5"
  
  if Hardware::CPU.intel?
    sha256 "008279eca248e6c7cad163223b1e7df2de330e62b918216f15aba469cd09d6da"

    url "https://updates.framer.com/electron/darwin/x64/Framer.zip"
    end
  else
    sha256 "296efac5623ce68a5832b9be20a6483ee2c7d9692778f403c69d489c75042f53"

    url "https://updates.framer.com/electron/darwin/arm64/Framer.zip"
  end

  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/desktop/"

  livecheck do
    url "https://updates.framer.com/sparkle/com.framer.desktop"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\d+)/FramerDesktop-\d+.zip}i, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
