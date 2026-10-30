cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.11.234"
  sha256 arm:          "35f17a21e53a49435e42fb9627731726aa8ef7fa63e5c3d9d43d0cc5ca43edaf",
         intel:        "55ef4f2d2b2c82b5258b7516eb1126549e6f10d6b418035676237bcc18e93e46",
         x86_64_linux: "201370cddd2924294e3ca6b46fd8ece49b5763953b644a1dd823fce5490cb41a"

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
