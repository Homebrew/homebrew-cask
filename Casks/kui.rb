cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "11.1.7"

  if Hardware::CPU.intel?
    sha256 "371d8d23ced626a2289e7e5916c80bf925e4e60044c5ccb427288cdf92078737"
  else
    sha256 "72c2ccd4449e37e7dba6f1954ec2499807f40050496fd1b5e3aa667ca0c5ccf6"
  end

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
