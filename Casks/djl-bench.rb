cask "djl-bench" do
  version "0.14.0"
  sha256 "520c746f31a64b979c2b74e8d56fe992dd591c871702f2a42d32a4699eb607a9"

  url "https://publish.djl.ai/djl-bench/#{version}/benchmark-#{version}.zip"
  name "djl-bench"
  desc "Universal machine learning model benchmark tool"
  homepage "https://djl.ai/extensions/benchmark/"

  livecheck do
    url "https://github.com/deepjavalibrary/djl/releases"
    strategy :github_latest
  end

  binary "benchmark-#{version}/bin/benchmark", target: "djl-bench"
end
