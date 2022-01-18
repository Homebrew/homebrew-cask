cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.0.0"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  if Hardware::CPU.intel?
    sha256 "4d639c57cf682caf0ed4d3b8bd4856dfbed18ab145d18fd236c9461228824616"
  else
    sha256 "2ac2d9fc7e28f33155594f32308bce52c51ff27c38e8a688cc050afe6b1dbfaf"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
