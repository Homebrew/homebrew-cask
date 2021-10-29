cask "djl-bench" do
  version "0.13.0"
  sha256 "4d33d58fee830b19b009ded9328cddc158bf7d89251435d379603bdf61faa63f"

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
