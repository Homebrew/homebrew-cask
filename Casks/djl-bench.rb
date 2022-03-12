cask "djl-bench" do
  version "0.15.0"
  sha256 "d18223a5fd8ed1a96613f68c417d46da0fd37b22e64843f847fac8a058054a3c"

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
