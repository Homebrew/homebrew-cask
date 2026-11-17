cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.13.4"
  sha256 arm:          "24b52c2bb312f8ab3d71545a173a69446901b27da5a44300bd03464ab066525b",
         intel:        "0e10437b40064dca09295d3d1f174ff4934aee9c98c54b833e55fa9841cf3598",
         x86_64_linux: "e1bd618ec61f4d21069335162cf6d854d8cd2e662f2395efb06edb5796ed16e9"

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
