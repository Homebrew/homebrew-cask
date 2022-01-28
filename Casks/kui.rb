cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.1.3"

  if Hardware::CPU.intel?
    sha256 "82e1af66daaaa05d3380c6d2adc95560eb940a146b7366eacb1d3c5f7c667463"
  else
    sha256 "88bd1cffc47ad19b685ef4761c8a75b4ae145a262c8a9ea686b425c22766273c"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
