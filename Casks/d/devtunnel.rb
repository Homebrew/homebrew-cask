cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.922+fa34179138"
  sha256 arm:   "3d81eaa2bd1d5be99489ac378c2925f2076f01d1a505044b0e51902ce052a868",
         intel: "d9875469d96c563302cb68d1bd6834bde6ba949ace57714a86ecd0108073da1e"
  
  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/osx-#{arch}-devtunnel-zip",
    verified: "tunnelsassetsprod.blob.core.windows.net/cli/"
  name "Microsoft devtunnel"
  desc "Provides developers to secure tunnels"
  homepage "https://aka.ms/devtunnels/docs"

  binary "devtunnel"
end