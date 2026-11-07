cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.12.17"
  sha256 arm:          "7331731afa01db2c4848b9435e395e4bda534db4b100c188a7efe95173e6ccac",
         intel:        "c854806bc12fc4b0969e21209f858cb4a6c580bfafcff062235a1db9031c2d5f",
         x86_64_linux: "16b1414dcb50450e654954f10cd38107f93e450d76b0dea63d0b5a65ca600d45"

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
