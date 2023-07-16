cask "exactscan" do
  version "23.2"
  sha256 "81998738431d680d022c2fd03ce2cefd81bc630de3a0bcadba24ddddc9c67da7"

  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg",
      verified: "dl.exactcode.com/"
  name "ExactScan"
  desc "Doceument scanner"
  homepage "https://exactscan.com/index.html"

  livecheck do
    url "https://exactscan.com/download.html"
    regex(%r{href=.*?/ExactScan-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "ExactScan.app"
end
