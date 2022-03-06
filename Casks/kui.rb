cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.4.2"

  if Hardware::CPU.intel?
    sha256 "25468014fc1c3af73c38595af3d8a65b5e7b8573357efd72e0872868e022a678"
  else
    sha256 "0ae763133cd2e623751a7627d230fe28f5b02d699f4e289a82c88fec91202533"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
