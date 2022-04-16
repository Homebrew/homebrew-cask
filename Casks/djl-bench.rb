cask "djl-bench" do
  version "0.16.0"
  sha256 "40d260157cac0f9db946255b81850d6447e7f4acfc7658048aa38f4dbe26909e"

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
