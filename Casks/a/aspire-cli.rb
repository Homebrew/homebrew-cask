cask "aspire-cli" do
  arch arm: "arm64", intel: "x64"

  version "13.1.0"
  sha256 arm:   "7d7bdf26822f0744efccfdea47e6a2b9bcd762f2144289b7a75171b8b18fd024",
         intel: "a17c61b57a83806c4bd212dbf927686a6f0c9f700535c6d8e9599925aa110c49"

  url "https://ci.dot.net/public/aspire/#{version}-preview.1.25616.3/aspire-cli-osx-#{arch}-#{version}.tar.gz",
      verified: "ci.dot.net/public/aspire/"
  name "Aspire CLI"
  desc "Command-line interface for .NET Aspire cloud-native development"
  homepage "https://aspire.dev/"

  livecheck do
    skip "Version is not auto-updatable from ci.dot.net"
  end

  binary "aspire"

  zap trash: "~/.aspire"
end
