cask "codebuddy-code" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "2.4.0"
  sha256 arm:          "35a8e3ef165a9f360d3040188dc6063dd74538382f1f693d7ae0fbbe621b800f",
         x86_64:       "2b9ad2bdd02800632f66a24f8bc372b9edba128eec49ee843f4d391794b08ab4",
         x86_64_linux: "efde560c39d7f873ee7b886d54f88282d3bd989f9c7aa708d0988de64e89e3c0",
         arm64_linux:  "53ae87af796502fd3b7d333f21f5daa0340a4b3936ea085bf2ffa360d506ab3f"

  url "https://acc-1258344699.cos.ap-guangzhou.myqcloud.com/@tencent-ai/codebuddy-code/releases/download/#{version}/codebuddy-code_#{os}_#{arch}.tar.gz",
      verified: "acc-1258344699.cos.ap-guangzhou.myqcloud.com/@tencent-ai/codebuddy-code/"
  name "Codebuddy Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://cnb.cool/codebuddy/codebuddy-code"

  livecheck do
    url "https://acc-1258344699.cos.ap-guangzhou.myqcloud.com/@tencent-ai/codebuddy-code/releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "codebuddy"

  zap trash: [
    "~/.codebuddy",
    "~/.codebuddy.json*",
    "~/.local/share/codebuddy",
  ]
end
