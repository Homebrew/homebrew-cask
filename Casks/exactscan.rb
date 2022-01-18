cask "exactscan" do
  version "22.1"
  sha256 "8c3f90461039db6f8dce5b2b80ed3b03ac0a3db57e0c495daa362351e9885ce7"

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
