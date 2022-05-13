cask "djl-bench" do
  version "0.17.0"
  sha256 "e30edcb2b3b17f2b71961692742b15ee74c6ea3b66db65716b573449c3289242"

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
