cask "kui" do
  version "10.5.13"

  if Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
    sha256 "bca01ed121dddd251232816120bd6517aef153f11fdac2131a8786627d9f8dd2"
    app "Kui-darwin-x64/Kui.app"
  else
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-arm64.tar.bz2"
    sha256 "2b7b8a4f995135b0d8b68d9ef45ddf730552ebc4d3c30770c0d9c57073b3c8cc"
    app "Kui-darwin-arm64/Kui.app"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
