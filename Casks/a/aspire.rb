cask "aspire" do
  arch arm: "arm64", intel: "x64"

  version "13.4.0-preview.1.26270.1"
  sha256 arm:   "08dda7504f55d2f2529df95408dea2d982a2f231319a0906a5afa8ebc63c6c40",
         intel: "27e1fca2abe857eb9f2de4129bb29ebd2317b59fc37b45fa76dff1d30b9ce603"

  url "https://ci.dot.net/public/aspire/13.4.0-preview.1.26270.1/aspire-cli-osx-#{arch}-#{version}.tar.gz",
      verified: "ci.dot.net/public/aspire/"
  name "Aspire CLI"
  desc "CLI for building observable, production-ready distributed applications"
  homepage "https://aspire.dev/"

  livecheck do
    skip "ci.dot.net artifact storage has no version index; Aspire release automation manages cask updates"
  end

  binary "aspire"

  # Write the sidecar file
  postflight do
    File.write("#{staged_path}/.aspire-install.json", %Q({"source":"brew"}\n))
  end
end
