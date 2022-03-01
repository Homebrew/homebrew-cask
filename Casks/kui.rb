cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.4.1"

  if Hardware::CPU.intel?
    sha256 "0fe766dc057e34a2b5731b62b438bffa7c972f28b12fde27ff5be12e5279af2a"
  else
    sha256 "291a380eae65633083e4ca120472574bf0edfd9dd99940f000bc8e5b4265b59a"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
