cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1336+36213d1bb6"
  sha256 arm:   "02d98fceca07184c22d9d5a44aac43f2a202fdcb0fa56d113fa4f2245ee70932",
         intel: "22345b37d91074ab720476b1b46b2ade2d2a9ba25b52c9cebddc492ab20f67ff"

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/osx-#{arch}-devtunnel-zip",
      verified: "tunnelsassetsprod.blob.core.windows.net/cli/"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local web services"
  homepage "https://aka.ms/devtunnels/docs"

  livecheck do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/cli-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "devtunnel"

  # No zap stanza required
end
