cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.12.32"
  sha256 arm:          "97d2c8779795661cdf56326985373ae9776d3121bd3616b3817fd57f6e539342",
         intel:        "82a81d1a37261b9cd8af4a1bfc2ef1ee4858ad7fcb3e88d8905694338b752d2d",
         x86_64_linux: "c4f5a4e277f67190daed2f032515219b1fbfcb2320f46140cf0ce70019d41c58"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"

  zap trash: "~/.devin"
end
