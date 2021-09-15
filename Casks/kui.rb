cask "kui" do
  version "10.5.4"

  if Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
    sha256 "4e3d43945fac6c25cc3c51fafdf8eed4b1c6454226907ddf5ebe0d96077acf4f"
    app "Kui-darwin-x64/Kui.app"
  else
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-arm64.tar.bz2"
    sha256 "9542ea0585b299be2505de1b7a690ab8b4800f7a433df5e0226c7e8a5dc61607"
    app "Kui-darwin-arm64/Kui.app"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
