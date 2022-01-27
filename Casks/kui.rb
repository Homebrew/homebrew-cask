cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.1.2"

  if Hardware::CPU.intel?
    sha256 "b7eedf22ee1ca7d9c9d371868107a311c202c0642a1c70c8dd5f1c5061a5e98e"
  else
    sha256 "2ada4297b97791618168b3b7ac8aa36dacc10151d5a4f1482950b0a5373a99c8"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
