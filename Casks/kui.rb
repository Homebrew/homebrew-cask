cask "kui" do
  version "10.6.0"

  if Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
    sha256 "34d8c0fa0441e84212a0ed0f35d8c0b5f2e5f0fdb8a6017e78099ba7037eb548"
    app "Kui-darwin-x64/Kui.app"
  else
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-arm64.tar.bz2"
    sha256 "b2a67d443f718a7a9023dfb1d0ed04600c464af4e73c6d19683d9c3951a77e70"
    app "Kui-darwin-arm64/Kui.app"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
