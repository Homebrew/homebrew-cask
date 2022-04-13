cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.4.4"

  if Hardware::CPU.intel?
    sha256 "93ffa444c7b04908f4b009b421d9c55746d6cb8663ff8f8b56c4cb0d4ec45836"
  else
    sha256 "3ef626a2687d8517e8df12b9e83a92d8de3c865f35300223933a22d90628fb85"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
