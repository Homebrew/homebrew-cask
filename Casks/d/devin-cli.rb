cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.11.228"
  sha256 arm:          "9287dfa4e1c666e7cebb680f851694419edd40996c05be6e0a039a027c4965bb",
         intel:        "68d078640be8e8bec895646d09a10fce2ac0e27a3cf2199c2aaad41b77fffeb7",
         x86_64_linux: "c00eb43d6e3f8c07f8d2ee435cddf62c7879319b73393a891c610da73c558509"

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
