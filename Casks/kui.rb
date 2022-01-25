cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.1.1"

  if Hardware::CPU.intel?
    sha256 "f15ee63ab7bf2be7b6e8de147e2f3af1881417a41c2809b1d62c93a0835bd588"
  else
    sha256 "a0a1067a5e60070917caa738bf5868d3f6b72d7dcea85cd785bca2e16e70ed05"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
