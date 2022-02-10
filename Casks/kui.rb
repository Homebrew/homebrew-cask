cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.2.3"

  if Hardware::CPU.intel?
    sha256 "42d410b12bc9910697d71c56748d2bd1abeb2ffe23ede2fed04c60c2ca85c133"
  else
    sha256 "2981d3f24e3ca1fe27ae1ba4601835ee1022c1a7eb389f902eb5bc7ffe89e97d"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
