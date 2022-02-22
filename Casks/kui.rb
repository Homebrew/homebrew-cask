cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.3.0"

  if Hardware::CPU.intel?
    sha256 "c7af752496a95c41f939f6910c6dbf8507ce83b8e20d6e2e84612715518f31e7"
  else
    sha256 "1ffda29227d2db35c4d56f093fcf026cb9190b620a42c94672a34887ad194bc9"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
