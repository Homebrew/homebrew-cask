cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.5.0"

  if Hardware::CPU.intel?
    sha256 "4dd77b53f2378e32ceb94d52e9fe07799f06f9acef537de053ec6f75dca3ef08"
  else
    sha256 "5706d72d5f0cef72260901081d448d56c2ae8cff3090eb2e25cdf77dad016ae1"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
