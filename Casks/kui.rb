cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "10.8.0"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  if Hardware::CPU.intel?
    sha256 "b904dfe4a9c424c81f541a9183fe1d5dde13098f4ca5976d8077a9a3dd489f7b"
  else
    sha256 "ac67008ae512f112ca7edd17f33a87647c8b88ee2bbae6d180f4cc56bf3fc183"
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
