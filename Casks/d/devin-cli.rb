cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-6"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "58f2f590f3129aa87dfe7da6f42bcd9d47322df8c7cf73c2f6d0231ab8da65fc",
           intel: "1ed0798824f7777029acf33ed6e3643e45f4bf8c127ab4c9944bb91783faa69d"
  end

  on_linux do
    sha256 "f2312ad17da8c049ce7525b31210ce61a84076aff71bf2485194a11db62b4767"

    depends_on arch: :x86_64
  end

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"

  zap trash: "~/.devin"
end
