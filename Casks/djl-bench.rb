cask "djl-bench" do
  version "0.14.1"
  sha256 "8408ef60ff0ded7288637883138d262d216a8c6ac7fc322ab60f5900f097860d"

  url "https://publish.djl.ai/djl-bench/#{version}/benchmark-#{version}.zip"
  name "djl-bench"
  desc "Universal machine learning model benchmark tool"
  homepage "https://djl.ai/extensions/benchmark/"

  livecheck do
    url "https://github.com/deepjavalibrary/djl/releases"
    strategy :git
  end

  binary "benchmark-#{version}/bin/benchmark", target: "djl-bench"
end
