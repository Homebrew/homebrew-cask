cask "aspire" do
  arch arm: "arm64", intel: "x64"

  version "13.4.0"
  sha256 arm:   "a828fd1f7cf4712535852624347b4b81b23efe36048c262ceae64a762ae0df98",
         intel: "baac505b0433a157da9dc24cf01f8f8cbc304d7a068d160a1c6b941f4ce2b02c"

  url "https://github.com/microsoft/aspire/releases/download/v#{version}/aspire-cli-osx-#{arch}-#{version}.tar.gz",
      verified: "github.com/microsoft/aspire/"
  name "Aspire CLI"
  desc "CLI for building observable, production-ready distributed applications"
  homepage "https://aspire.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "aspire"

  # Lets the Aspire CLI identify the install source without path heuristics.
  postflight do
    File.write("#{staged_path}/.aspire-install.json", %Q({"source":"brew"}\n))
  end

  zap trash: "~/.aspire"
end
