cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.2.5"

  if Hardware::CPU.intel?
    sha256 "3f08aed1388c88cff27459c5089277279d935715cf4b36f7507a52c1a74446c2"
  else
    sha256 "bb583c90ebe6a18d086370f7f8d1d4835e1b5f26e0a6753888764f7af6ae5a96"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
