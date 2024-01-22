cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1160+d54aaf0b07"
  sha256 arm:   "7ebd20481ed0a2a127ddaacad5c17b420a4aea31b768349e51e80c67d8ff4d96",
         intel: "fe19afd1c54b5f248aba13b816efff962bf00739cecc9ac0f798db8b49f8195d"

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
