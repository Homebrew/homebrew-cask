cask "openswift" do
  version "0.1.0"
  sha256 "c91fc35f3b1ec788612e83d79cc4dbd271a930c7c3114c94bcf4df71049fb23f"

  url "https://github.com/JiangWanZhengChouYv/OpenSwift/releases/download/v#{version}/OpenSwift-v#{version}.zip"
  name "OpenSwift"
  desc "macOS app accelerator - control process speed via DYLD injection"
  homepage "https://github.com/JiangWanZhengChouYv/OpenSwift"
  license "MIT"

  app "OpenSwift.app"
end
