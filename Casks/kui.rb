cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.1.4"

  if Hardware::CPU.intel?
    sha256 "a1f8f9ec039f3b3a777898f798b104daf384aba8a604323c419119b2ec1ce26d"
  else
    sha256 "628333969d594e2cfa6ba12b8c5657be0e60807e371bff6e863301b471fe1679"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
