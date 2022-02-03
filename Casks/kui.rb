cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.1.6"

  if Hardware::CPU.intel?
    sha256 "491484aac72158b5f32e11322f2eab70160fa0e1806d794dc34c151a05da0c2e"
  else
    sha256 "4a54f6c49d070ed1f6099c994672fe232d0978412c9f3d20e8d788ec5c331872"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
