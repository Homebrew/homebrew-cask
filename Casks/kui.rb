cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.4.0"

  if Hardware::CPU.intel?
    sha256 "2c528231022305d698e6aa622b21313026c77c5d599737eab7ebfb4a9c7d13b6"
  else
    sha256 "db292abd1c746af6f5731e19314660c6b7a9ce85ded5290440ccdb0f47239a06"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
