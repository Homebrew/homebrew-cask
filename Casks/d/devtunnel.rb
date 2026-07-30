cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2014+3c9645ccd8"
  sha256 arm:          "6c6b05024a422e4179387203b326c48c68a9368f5ec70832cb3dff616b9e734d",
         intel:        "718721bfc31329c6ebc4fc3dc34715d994b658051b5f84c18f629613315d2eb7",
         arm64_linux:  "f93aea73c27137b9e7b244587d115b5da6263fddd0135ae8d8e3a4307d20da5b",
         x86_64_linux: "5d6034b4bf81dead62635551d8d96b363403e5ca5307a6a653ab31d1c73d00cc"

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/#{os}-#{arch}-devtunnel"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local web services"
  homepage "https://aka.ms/devtunnels/docs"

  livecheck do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/cli-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  container type: :naked

  binary "#{os}-#{arch}-devtunnel", target: "devtunnel"

  # No zap stanza required
end
